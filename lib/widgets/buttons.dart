import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                overlayColor: WidgetStatePropertyAll(Colors.black),
                elevation: WidgetStatePropertyAll(20),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              child: Text('Press me',style: TextStyle(fontSize: 30),),onPressed: (){},),
            SizedBox(height: 20),
            Container(
              height: 40,
                width: 300,
                child: ElevatedButton(
                  style :ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
    ),onPressed: (){ print('like');},child: Text('Press me',
                  style: TextStyle(fontSize: 30,),),)),
          ],
        ),
      ),
    );
  }
}
