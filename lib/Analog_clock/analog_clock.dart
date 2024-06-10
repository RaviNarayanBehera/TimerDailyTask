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
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(color: Colors.red, spreadRadius: 2)]),
                alignment: Alignment.center,
                child: Text(
                  'Digital',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/analog');
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(color: Colors.red, spreadRadius: 2)]),
                alignment: Alignment.center,
                child: Text(
                  'Analog',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/strap');
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(color: Colors.red, spreadRadius: 2)]),
                alignment: Alignment.center,
                child: Text(
                  'StrapWatch',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/clock.jpg'), fit: BoxFit.fill),
        ),
        child: Transform.translate(
          offset: Offset(7, 300),
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
    );
  }
}
