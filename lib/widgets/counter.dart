
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Count: $count'),duration: Duration(milliseconds: 500),),
    );
  }
  void decrementCounter(){
    if(count>0) {
      setState(() {
        count--;
      });
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Count: $count'),duration: Duration(milliseconds: 500),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Counter App',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Button pressed:',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 10),

            Text(
              '$count',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: incrementCounter,
                    child: const Text('Increment'),
                  ),

                  SizedBox(width: 10),

                  ElevatedButton(
                    onPressed: decrementCounter,
                    child: const Text("Decrement"),
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
