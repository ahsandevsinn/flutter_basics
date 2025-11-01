import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
//     return Scaffold(body:  Column(
//       children: [
//        InkWell(
//         onTap: (){
//           print("object");
//         },
//         onDoubleTap: (){
//           print("on double tap");

//         },
//         onHover: (value) {
//           print("Hover");
//         },
//         onLongPress: (){
//           print("Long Press");
//         },
//          child: Container(
//           height: 50,width: double.infinity,
//           color: Colors.blue,
//          ),
//        ),
//        Dismissible(
//   key: ValueKey('card1'),
//   background: Container(color: Colors.red, child: Icon(Icons.delete)),
//   onDismissed: (_) => print("Item Deleted"),
//   child: Card(
//     child: ListTile(
//       title: Text("Swipe to delete me"),
//       leading: Icon(Icons.touch_app),
//     ),
//   ),
// )

//       ],
//     ));
//   }
    return Platform.isIOS
        ? CupertinoPageScaffold(
            child: Center(
            child: CupertinoButton(
                child: Icon(CupertinoIcons.add), onPressed: () {}),
          ))
        : Scaffold(
            appBar: AppBar(),
            body: Center(
              child: ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
            ),
          );
  }
}
