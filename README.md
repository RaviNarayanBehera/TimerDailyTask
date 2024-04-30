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
#
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
















#
<h1 align = "center">
  <img src="https://github.com/RaviNarayanBehera/TimerDailyTask/assets/148530184/21de20a3-ec80-49f3-b809-66baf74db92a" height=65%  width=22%>
</h1>
