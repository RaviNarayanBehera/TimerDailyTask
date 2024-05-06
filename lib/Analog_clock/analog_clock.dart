import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import '../Global.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
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
                Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ...List.generate(
                        60,
                        (index) => Transform.rotate(
                          angle: ((index + 1) * 6 * pi) / 180,
                          child: ((index + 1) % 5 == 0)
                              ? const VerticalDivider(
                                  thickness: 3,
                                  color: Colors.red,
                                  indent: 0,
                                  endIndent: 190,
                                )
                              : const VerticalDivider(
                                  thickness: 2,
                                  color: Colors.lightBlueAccent,
                                  indent: 0,
                                  endIndent: 200,
                                ),
                        ),
                      ),
                      Transform.rotate(
                        angle: (dateTime.hour % 12 + dateTime.minute / 60) *
                            30 *
                            pi /
                            180,
                        child: VerticalDivider(
                          thickness: 5,
                          color: Colors.red,
                          indent: 50,
                          endIndent: 90,
                        ),
                      ),
                      Transform.rotate(
                        angle: (dateTime.second * 6 * pi) / 180,
                        child: const VerticalDivider(
                          thickness: 2,
                          color: Colors.white,
                          indent: 25,
                          endIndent: 90,
                        ),
                      ),
                      Transform.rotate(
                        angle: (dateTime.minute * 6 * pi) / 180,
                        child: const VerticalDivider(
                          thickness: 3.5,
                          color: Colors.lightBlueAccent,
                          indent: 35,
                          endIndent: 90,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
