import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(
          () {
            dateTime = DateTime.now();

            if (dateTime.hour > 11) {
              amPm = 'PM';
            } else {
              amPm = 'AM';
            }
            switch (dateTime.weekday) {
              case 1:
                day = 'Mon';
                break;
              case 2:
                day = 'Tues';
                break;
              case 3:
                day = 'Wed';
                break;
              case 4:
                day = 'Thu';
                break;
              case 5:
                day = 'Fri';
                break;
              case 6:
                day = 'Sat';
                break;
              case 7:
                day = 'Sun';
                break;
            }
            switch (dateTime.month) {
              case 1:
                month = 'Jan';
                break;
              case 2:
                month = 'Feb';
                break;
              case 3:
                month = 'Mar';
                break;
              case 4:
                month = 'Apr';
                break;
              case 5:
                month = 'May';
                break;
              case 6:
                month = 'June';
                break;
              case 7:
                month = 'July';
                break;
              case 8:
                month = 'Aug';
                break;
              case 9:
                month = 'Sep';
                break;
              case 10:
                month = 'Oct';
                break;
              case 11:
                month = 'Nov';
                break;
              case 12:
                month = 'Dec';
                break;
            }
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
              image: AssetImage('assets/images/3.jpg'), fit: BoxFit.fill),
        ),
        child: Row(
          children: [
            Transform.translate(
              offset: Offset(125, 270),
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '${dateTime.hour}:${dateTime.minute}:${dateTime.second}',
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 45,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: '  $amPm',
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '$day, $month ${dateTime.day}',
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
