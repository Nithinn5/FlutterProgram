import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('BottomSheet'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){showModalBottomSheet(
          backgroundColor: Colors.amberAccent,
          context: context,
          isScrollControlled: true,
          builder:(context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('orange'),
                subtitle: Text('Fruits r good for health'),
              ),
              ListTile(
                title: Text('Apple'),
                subtitle: Text('Fruits r good for health'),
              ),
              ListTile(
                title: Text('Grapes'),
                subtitle: Text('Fruits r good for health'),
              ),
              ListTile(
                title: Text('Banana'),
                subtitle: Text('Fruits r good for health'),
              ),
              ListTile(
                title: Text('Pineapple'),
                subtitle: Text('Fruits r good for health'),
              ),
            ],
          );
        },);}, child: Text('show bottom sheet')),
      ),


    );
  }
}
