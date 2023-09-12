
import 'package:flutter/material.dart';

class TripSearchBar extends StatelessWidget{
  TripSearchBar({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding : EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        decoration: BoxDecoration(
          boxShadow: [],
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Colors.grey,width: 0.2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children:[
                Icon(Icons.search,),
                SizedBox(width: 5,),
                Column(
                  children: [
                    SizedBox(
                      width: 230,
                      child: TextField(// 실행하면 키보드가 튀어나온다
                        maxLines :1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:'행선지를 입력하세요.',
                          hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '어디서나.언제든지.게스트를 추가하세요',
                      style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,width: 0.2,
                ),
                  borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'assets/images/filter.png',
                width: 20,
                height: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}