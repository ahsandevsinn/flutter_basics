import 'package:flutter/material.dart';
import 'package:flutter_basics/render_object.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
      print("Widget rebuilt");
    return Scaffold(
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
          Text(count.toString(),style: TextStyle(fontSize: 30),),
          IconButton(onPressed: (){
            setState(() {
              count++;
            });
          }, icon: Icon(Icons.add)),
MyTextWidget(text: "hello",fontSize: 30,)
        ],
      ),),
    );
  }
}