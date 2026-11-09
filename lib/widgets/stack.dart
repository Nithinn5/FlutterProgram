import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("StackBar"),
      ),
      body: Stack(
        children: [
          Positioned(child: Container(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/thor.png'),
                fit: BoxFit.cover
                )
              ),
            ),
          ),
          ),
          Positioned(
            top: 30,
            bottom: 50,
              child: Container(
            height: 100,
            width: 50,
            color: Colors.orange,
          ))
        ],
      ),
      // body: Container(
      //   color: Colors.blue,
      //   child: Center(
      //     child: Stack(children: [
      //       Positioned(
      //         bottom: 30,
      //         left: 30,
      //         child: Container(
      //           height: 300,
      //           width: 300,
      //           color: Colors.red,
      //         ),
      //       ),
      //       Positioned(
      //         left: 70,
      //         bottom: 200,
      //         child: Center(
      //           child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.green,
      //           ),
      //
      //         ),
      //       ),
      //   Positioned(
      //     bottom: 320,
      //     left: 120,
      //     child: Center(
      //       child: Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.white,
      //
      //     )),
      //   )],)
      //   ),
      // ),
    );
  }
}
