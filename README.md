<h1 align = "center">
Asynchronous Programming
</h1>
<br><br>

# 1. What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.

<br>

# 2. What is Future Class ?

The Future class represents a future result of an asynchronous computation.     
This result will eventually appear in the Future after the processing is complete.

<br>

# 3. What is Duration class & Future.delayed() constructor with Example ?
## 👉 Duration Class 

A Duration represents a difference from one point in time to another.
<br>

## 👉 Future.delayed Constructor 
The Future.delayed is a constructor that creates a future which runs its computation after a delay. 

The Future.delayed constructor has two arguments. 

The first argument is a Duration object which specifies the delay before the callback function is executed, and the second argument is the callback function.

## 👉 Example for Future.delayed construct 👈


```
  void main() {
  Future.delayed(Duration(seconds: 2),
  () => print("Delayed Execution");
}
```

<br>

## 4. What is the Use of the async & await keyword?

In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. they are part of Dart language, on which Flutter is built.

<br>

## 5. What is Recursion ?

Recursion is the process of defining a problem (or the solution to a problem) in terms of (a simpler version) itself.

```
  We can define the operation "find your way home" as:
  1. If you are at home, stop moving.
  2. Take one step towards home.
  3. "find your way home".
```
<br>

## 6. What is Timer class ?

The timer class allows us to schedule future actions and provides us with the control mechanisms to start,cancel and reset timers.

```
    Timer _timer = Timer(Duration(seconds: 10),(){
    // This block of code will be executed when timer finishes.
    print('Timer has finished counting down.');
  });
```
<br>

## 7. What is Timer.periodic ?

It allows you to schedule a callback to be executed repeatedly with a specified duration between each call.


```
import 'package:flutter/material.dart';

class PeriodicTimerWidget extends StatefulWidget {
  @override
  _PeriodicTimerWidgetState createState() => _PeriodicTimerWidgetState();
}

class _PeriodicTimerWidgetState extends State<PeriodicTimerWidget> {
  Timer? _periodicTimer;
  int _tickCount = 0;

  void _startPeriodicTimer() {
    const oneSecond = Duration(seconds: 1);
    _periodicTimer = Timer.periodic(oneSecond, (Timer timer) {
      setState(() {
        _tickCount++;
      });
    });
  }

  @override
  void dispose() {
    _periodicTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tick: $_tickCount',
          style: TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startPeriodicTimer,
        tooltip: 'Start Periodic Timer',
      ),
    );
  }
}
```
<h1 align = "center">
 Flutter Button's
</h1>

<h1 align = "center">
  <img src="https://github.com/RaviNarayanBehera/TimerDailyTask/assets/148530184/21de20a3-ec80-49f3-b809-66baf74db92a" height=65%  width=22%>
</h1>
