import 'package:flutter/material.dart';


class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('SnackBar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: (){
            final snackbar = SnackBar(
              action: SnackBarAction(label: 'undo',textColor: Colors.blue, onPressed: (){}),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(milliseconds: 3000),
                backgroundColor:Colors.grey,
                content: Text("This is a snackbar"));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }, child: Text('show snackbar')),
        ),

      ),
    );
  }
}
