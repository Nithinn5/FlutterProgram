import 'package:flutter/material.dart';
import 'package:flutter_form/widgets/alert.dart';
import 'package:flutter_form/widgets/dismissible.dart';
import 'package:flutter_form/widgets/drawer.dart';
import 'package:flutter_form/widgets/snackbar.dart';

class BottomNaviWidget extends StatefulWidget {
  const BottomNaviWidget({super.key});


  @override
  State<BottomNaviWidget> createState() => _BottomNaviWidgetState();
}

class _BottomNaviWidgetState extends State<BottomNaviWidget> {

  int selectedIndex =0 ;

  PageController pageController = PageController();
  
  // List<Widget> widgets = [
  //   Text('home'),
  //   Text('search'),
  //   Text('Add'),
  //   Text('Profile')
  // ];
  void onTapped(int index){
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // backgroundColor: Colors.red,
      //   // title: Text('BottomNav'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissiableWidget(),
          SnackBarWidget(),
          DrawerWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label:'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),
      ],
          currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        onTap: onTapped,

      ),
    );
  }
}
