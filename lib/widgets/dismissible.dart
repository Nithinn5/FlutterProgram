import 'package:flutter/material.dart';

class DismissiableWidget extends StatefulWidget {
  const DismissiableWidget({super.key});

  @override
  State<DismissiableWidget> createState() => _DismissiableWidgetState();
}

class _DismissiableWidgetState extends State<DismissiableWidget> {
  List<String> fruits = [ 'orange','apple','banana','grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
      title: Text('Dismissable Package' ),
      ),
      body: ListView.builder(itemCount: fruits.length, itemBuilder: ( context,  index) {
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction){
            if(direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                  backgroundColor: Colors.red));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                  backgroundColor: Colors.green));
            }
          },

            key: ValueKey(fruit),
          background: Container(
            color: Colors.red,
          ),
          secondaryBackground: Container(
            color: Colors.green,
          ),
          child: Card(child: ListTile(title: Text(fruits[index]),))

          ,);
      },),
    );
  }
}
