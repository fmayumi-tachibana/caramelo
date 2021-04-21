import 'package:flutter/material.dart';
import 'package:pet_bro/modules/home/home_scene.dart';
import 'package:pet_bro/resources/appcolors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet.Bro',
      theme: ThemeData(
        primarySwatch: AppColors.white
      ),
      home: HomeScene(),
    );
  }
}
