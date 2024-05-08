import 'package:clock_app/Analog_clock/analog_clock.dart';
import 'package:clock_app/Strpwatch_clock/strapwatch.dart';
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
        '/':(context)=>(const ClockScreen()),
        '/analog':(context)=>(const AnalogClock()),
        '/strap':(context)=>(const StrapWatch()),
      },
    );
  }
}

