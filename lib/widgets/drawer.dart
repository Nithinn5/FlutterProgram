import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader
              (padding: EdgeInsets.zero,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(children: [
                      CircleAvatar(radius: 40,
                      backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP._HoE7A6dqzhEZE9i-xW2FAHaHa?w=179&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3"),),
                      SizedBox(width: 14),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Nithin N" ,style: TextStyle(fontSize: 16),),
                          Text("nn6112207@gmail.com")
                        ],
                      ),

                  ],
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                  SizedBox(height: 5),// Row
                ],
              ), // Column
            ), // Container
          ), // DrawerHeader
              ListTile(leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              ListTile(leading: Icon(Icons.folder),
                title: Text('My Groups'),
              ),
              ListTile(leading: Icon(Icons.folder),
                title: Text('My Uploads'),
              ),
              ListTile(leading: Icon(Icons.folder),
                title: Text('My Trash'),
              ),
              ListTile(leading: Icon(Icons.folder),
                title: Text('Shared'),
              ),
              ListTile(leading: Icon(Icons.folder),
                title: Text('Log out'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Drawer'),
      ),
      body: Container(
        child: Center(
          child: Text("hey there"),
        ),
      ),
    );

  }
}
