import 'package:flutter/material.dart';
import 'package:flutter_form/widgets/buttons.dart';
import 'package:flutter_form/widgets/list_grid.dart';
import 'package:flutter_form/widgets/snackbar.dart';

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
        brightness: Brightness.light,),
       home:SnackBarWidget(),
    );
  }
}
