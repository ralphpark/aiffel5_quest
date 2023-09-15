import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:node04_todo_app/app/view/home/home.dart';
import 'package:node04_todo_app/firebase_options.dart';
import 'app/view/auth/login.dart';

//flutter pub add firebase_core

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized(); //플러터 앱이 초기화 되었는지 확인해라
  //파이어 베이스가 제대로 셋팅되어 있어야 파이어베이스 사용 가능함
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); // firebase_options.dart 에서 설정한 옵션을 사용
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  late FirebaseAuth auth;

  @override
  void initState(){
    super.initState();
    auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Todo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      routes: {'/login': (context) => LoginPage()},
      home: StreamBuilder<User?>(
        stream: auth.authStateChanges(),
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              color: Colors.black,
            ));
          }else {
            if(snapshot.hasData){
              return HomePage();
            }else{
              return LoginPage();
            }
          }
        }
      ) // flutter pub add animated_splash_screen 추가
    );
  }
}