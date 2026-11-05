import 'package:flutter/material.dart';


class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 4,
            title: Text('Whatsapp'),
            bottom: TabBar(
              indicatorColor: Colors.red,
                isScrollable: true,
                tabs: [
              Tab(icon: Icon(Icons.chat),text: 'Chats',),
              Tab(icon: Icon(Icons.call),text: 'Calls',),
              Tab(icon: Icon(Icons.amp_stories),text: 'Status',),
              Tab(icon: Icon(Icons.group),text: 'community',),
              Tab(icon: Icon(Icons.add),text: 'add',)
            ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(
                child: Text('Chats',style: TextStyle(fontSize: 30),),
              ),
            ),
            Container(
              child: Center(
                child: Text('Calls',style: TextStyle(fontSize: 30),),
              ),
            ),
            Container(
              child: Center(
                child: Text('status',style: TextStyle(fontSize: 30),),
              ),
            ),
            Container(
              child: Center(
                child: Text('Community',style: TextStyle(fontSize: 30),),
              ),
            ),SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Text('Add',style: TextStyle(fontSize: 30),),
              ),
            )
          ]),
        ));
  }
}
