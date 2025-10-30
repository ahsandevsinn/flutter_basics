import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyTextWidget extends LeafRenderObjectWidget {
  final String text;
  final Color color;
  final double fontSize;

  const MyTextWidget({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 20,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderMyText(text, color, fontSize);
  }

  @override
  void updateRenderObject(BuildContext context, RenderMyText renderObject) {
    renderObject
      ..text = text
      ..color = color
      ..fontSize = fontSize;
  }
}

class RenderMyText extends RenderBox {
  String _text;
  Color _color;
  double _fontSize;

  RenderMyText(this._text, this._color, this._fontSize);

  set text(String value) {
    if (_text == value) return;
    _text = value;
    markNeedsLayout();
  }

  set color(Color value) {
    if (_color == value) return;
    _color = value;
    markNeedsPaint();
  }

  set fontSize(double value) {
    if (_fontSize == value) return;
    _fontSize = value;
    markNeedsLayout();
  }

  late TextPainter _textPainter;

  @override
  void performLayout() {
    _textPainter = TextPainter(
      text: TextSpan(
        text: _text,
        style: TextStyle(color: _color, fontSize: _fontSize),
      ),
      textDirection: TextDirection.ltr,
    );
    _textPainter.layout();
    size = _textPainter.size;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _textPainter.paint(context.canvas, offset);
  }
}
