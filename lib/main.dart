import 'package:flutter/material.dart';
import 'views/dashboard.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.deepPurple),
  home: const Dashboard(),
)); // MaterialApp

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const Dashboard();
  }
}

