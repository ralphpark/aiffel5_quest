
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:node04_todo_app/app/service/auth_service.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  late FirebaseAuth auth;
  @override
  void initState(){
      super.initState();
      auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Modu Todo'),
        actions:[
          IconButton(
              icon: Icon(Icons.logout_rounded),
              onPressed: () {
                logOut(context, auth);
              },
          )
        ]
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }

}