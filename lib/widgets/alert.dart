import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('AlertDart'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          _showAlertDialog(context);
        },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )
          ),
          child: Text('show alert '),),
      ),
    );
  }
}
Future<void> _showAlertDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      backgroundColor: Colors.blueAccent,
      title: Text("This is an alert"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text('This is a demo'),Text('This is nithin')
          ],

        ),
      ),
      actions: [
        TextButton(onPressed: (){}, child: Text('Approve')),
        TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Decline'))
      ],
      );

  });
}
