import 'package:flutter/material.dart';

import 'package:airbnb_clone/screens/home/widgets.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context){ // context는 위젯의 위치를 알려주는 역할을 한다.
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height : 91,
        child : BottomAppBar(
          child : Padding(
            padding : EdgeInsets.only(left : 20, right : 20, top : 10),
            child : Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children:[
                Column(
                  children:[
                    Icon(Icons.search, color:Colors.black,),
                    SizedBox(height: 5,),
                    Text('탐색', style: TextStyle(color:Colors.red,fontWeight:FontWeight.w500))
                  ]
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                    children:[
                      Icon(Icons.favorite_border, color:Colors.black,),
                      SizedBox(height: 5,),
                      Text('위시리스트', style: TextStyle(color:Colors.red,fontWeight:FontWeight.w500))
                    ]
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                    children:[
                      Image.asset('assets/images/airbnb.png', width: 20, height: 20,),
                      SizedBox(height: 5,),
                      Text('여행', style: TextStyle(color:Colors.red,fontWeight:FontWeight.w500))
                    ]
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                    children:[
                      Image.asset('assets/images/chat.png', width: 20, height: 20,),
                      SizedBox(height: 5,),
                      Text('메시지', style: TextStyle(color:Colors.red,fontWeight:FontWeight.w500))
                    ]
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                    children:[
                      Image.asset('assets/images/user-2.png', width: 20, height: 20,),
                      SizedBox(height: 5,),
                      Text('프로필', style: TextStyle(color:Colors.red,fontWeight:FontWeight.w500))
                    ]
                ),
              ]
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TripSearchBar(),
              CategoryNav(),
              SizedBox(
                height: 20,
              ),
              Divider(
                height:0
              ),
              TripCard(),
            ],
          )
        ),
      ),
    );
  }

}