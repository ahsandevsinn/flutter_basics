import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<StatefulWidget> {
  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies changed");
  }

    @override
void didUpdateWidget(MyStatefulWidget oldWidget) {
  super.didUpdateWidget(oldWidget);
  print("Widget updated");
}


@override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    // stateful widgets has 2 classes
    print("widget rebuild");
   setState(() {
     count++;
   });

    return Text(count.toString());
  }



}
