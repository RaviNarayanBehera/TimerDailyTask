import 'package:flutter/material.dart';

class FlutterButton extends StatefulWidget {
  const FlutterButton({super.key});

  @override
  State<FlutterButton> createState() => _FlutterButtonState();
}

class _FlutterButtonState extends State<FlutterButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Actions',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w500),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {

            }, child: Text('Elevated'),),

            OutlinedButton(onPressed: () {

            }, child: Text('Outlined',),),

            TextButton(onPressed: () {

            }, child: Text('Text Button'),),

            FloatingActionButton(onPressed: () {

            },child: Icon(Icons.add),),
          ],
        ),
      ),
    );
  }
}
