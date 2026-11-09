import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Container and SizedBox'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text('HEyyy' ,style: TextStyle(fontSize: 20), ),

          ),
          ),
      ),
    );
  }
}

 