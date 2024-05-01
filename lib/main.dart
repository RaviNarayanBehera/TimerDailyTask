import 'package:flutter/material.dart';
import 'Digital_Clock/Clock_Screen.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context)=>(const FlutterButton()),
        '/':(context)=>(const ClockScreen()),
      },
    );
  }
}

