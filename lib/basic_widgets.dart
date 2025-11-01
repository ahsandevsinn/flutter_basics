import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
    clipBehavior: Clip.none,
        children: [
         Container(height: 200,width: 200,color: Colors.amber,),
         Positioned(
          top: 100,
          bottom: -40,
         
          child: Container(height: 100,width: 100,color: Colors.blue,)),
        ],
      ),
    );
  }
}

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
                    Container(
            height: 300,
            width: 300,
            color: Colors.black,
          ),          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({super.key});

  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView.builder(
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,mainAxisExtent: 180), itemBuilder: (_,index){
        return Container(
        
          color: Colors.blue,
        );
      }),
    );
  }
}

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded"),),
      body: Column(
        children: [
          // Expanded(
          //   child: Container(
          //     height: 100,width: 100,color: Colors.red,
          //   ),
          // ),
Flexible(
            child: Container(
              height: 100,width: 100,color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}