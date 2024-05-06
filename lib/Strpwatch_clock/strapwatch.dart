import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import '../Global.dart';

class StrapWatch extends StatefulWidget {
  const StrapWatch({super.key});

  @override
  State<StrapWatch> createState() => _StrapWatchState();
}

class _StrapWatchState extends State<StrapWatch> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(
          () {
            dateTime = DateTime.now();
          },
        );
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/3.jpg'), fit: BoxFit.fill),
          ),
          child: Transform.translate(
            offset: Offset(10, 280),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 243,
                      width: 243,
                      child: CircularProgressIndicator(
                        strokeWidth: 7,
                        color: Colors.orange,
                        value: dateTime.second / 60,
                      ),
                    ),
                    SizedBox(
                      height: 230,
                      width: 230,
                      child: CircularProgressIndicator(
                        strokeWidth: 7,
                        color: Colors.white,
                        value: dateTime.minute / 60,
                      ),
                    ),
                    SizedBox(
                      height: 216,
                      width: 216,
                      child: CircularProgressIndicator(
                        strokeWidth: 7,
                        color: Colors.green,
                        value: ((dateTime.hour % 12 + dateTime.minute / 60) / 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 278,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
