import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange','apple','mango','banana'];
  Map fruits_person ={
    'fruits':['orange','apple','mango','banana'],
    'names':['raven','karthik','manoj','kiran']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListAndGrid'),
        backgroundColor: Colors.deepPurple,
        elevation: 8,
      ),
      body: Container(
        child: GridView.builder(
          itemCount:fruits.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: ( context, index) {

          return Card(child: Center(
            child: Text(fruits[index]),
          ),);
          },),
        // child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 30,mainAxisSpacing: 20,
        // childAspectRatio: 2/3),
        // children: [
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   ),
        //   Card(
        //     child: Center(child: Text('orange')),
        //   )
        //
        // ],
        // ),


        // child:ListView.builder(itemCount: fruits.length,
        //   itemBuilder: (context, index){
        //   return Card(child: ListTile(
        //     leading: Icon(Icons.person),
        //     title: Text(fruits_person['fruits'][index]),
        //     subtitle: Text(fruits_person['names'][index]),
        //   ),);
        //   }
        //
        //
        //   )
      )
    );
  }
}



      // ListView(
      //   children: [
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('orange'),
      //         subtitle: Text('Manoj'),
      //       ),
      //     ),
      //   ],



