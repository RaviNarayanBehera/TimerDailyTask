import 'package:clock_app/Flutter_Button/flutter_buttons.dart';
import 'package:flutter/material.dart';
import 'Clock_App/digital_clock.dart';

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

