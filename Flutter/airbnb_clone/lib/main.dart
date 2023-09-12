import 'package:airbnb_clone/screens/home/home.dart';
import 'package:airbnb_clone/screens/seoul/seoul_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airbnb Clone',
      theme: ThemeData(
        fontFamily: 'AirbnbCereal',
      ),
      routes: {
        '/': (context) => HomePage(),
        '/seoul_detail': (context) => SeoulDetail(),
      }
    );
  }
  
}



//박근수

