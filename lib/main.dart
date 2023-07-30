import 'dart:js';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/views/user-screan.dart';
import 'package:task/views/widgets/log.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home:Screan(),
     // log(),

   );
  }
}





