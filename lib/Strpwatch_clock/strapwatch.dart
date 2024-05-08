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
        child: Transform.translate(
          offset: Offset(10, 350),
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
                  Container(
                    height: 220,
                    width: 220,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Transform.rotate(
                          angle: (dateTime.hour % 12 + dateTime.minute / 60) *
                              30 *
                              pi /
                              180,
                          child: VerticalDivider(
                            thickness: 5,
                            color: Colors.green,
                            indent: 50,
                            endIndent: 90,
                          ),
                        ),
                        Transform.rotate(
                          angle: (dateTime.second * 6 * pi) / 180,
                          child: const VerticalDivider(
                            thickness: 2,
                            color: Colors.orange,
                            indent: 25,
                            endIndent: 90,
                          ),
                        ),
                        Transform.rotate(
                          angle: (dateTime.minute * 6 * pi) / 180,
                          child: const VerticalDivider(
                            thickness: 3.5,
                            color: Colors.white,
                            indent: 35,
                            endIndent: 90,
                          ),
                        ),
                      ],
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
    );
  }
}
