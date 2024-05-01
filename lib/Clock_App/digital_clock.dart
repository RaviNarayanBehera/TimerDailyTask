import 'package:flutter/material.dart';
import 'dart:async';
import '../Global.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Hit_man.jpg'), fit: BoxFit.fill),
        ),
        child: Transform.translate(
          offset: Offset(10,12),
            child: Column(
              children: [
                Text(
                          '${dateTime.hour}:${dateTime.minute}',
                          style: TextStyle(
                  color: Colors.white70, fontSize: 45, fontWeight: FontWeight.w500),
                        ),
                Text(
                          '${dateTime.day}-${dateTime.month} -${dateTime.year}',
                          style: TextStyle(
                  color: Colors.white70, fontSize: 15, fontWeight: FontWeight.w500),
                        ),
              ],
            )),
      ),
    );
  }
}
