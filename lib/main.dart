import 'package:flutter/material.dart';
import 'package:flutter_form/widgets/alert.dart';
import 'package:flutter_form/widgets/animated_txt.dart';
import 'package:flutter_form/widgets/bottomnav.dart';
import 'package:flutter_form/widgets/bottomsheet.dart';
import 'package:flutter_form/widgets/buttons.dart';
import 'package:flutter_form/widgets/counter.dart';
import 'package:flutter_form/widgets/dismissible.dart';
import 'package:flutter_form/widgets/drawer.dart';
import 'package:flutter_form/widgets/dropdown.dart';
import 'package:flutter_form/widgets/geolocator.dart';
import 'package:flutter_form/widgets/image.dart';
import 'package:flutter_form/widgets/imagepicker.dart';
import 'package:flutter_form/widgets/list_grid.dart';
import 'package:flutter_form/widgets/snackbar.dart';
import 'package:flutter_form/widgets/stack.dart';
import 'package:flutter_form/widgets/tabbar.dart';

import 'widgets/container_sizedbox.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,primaryColor: Colors.blueAccent),
       home:CounterScreen(),
    );
  }
}
