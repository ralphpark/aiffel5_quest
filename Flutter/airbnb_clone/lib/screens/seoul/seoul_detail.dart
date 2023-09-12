
import 'package:airbnb_clone/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SeoulDetail extends StatelessWidget{
  SeoulDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget> [
              ImageSlideshow(
                height: 350,
                children: [
                  Image.asset(
                  'assets/images/seoul_detail.jpg',
                  fit:BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/seoul_detail1.jpeg',
                    fit:BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/seoul_detail2.jpg',
                    fit:BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                top:60,
                right:20,
                child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.favorite_outline, color: Colors.red,)),
              ),
              Positioned(
                top: 60,
                left: 20,
                child : GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        PageRouteBuilder(
                            transitionDuration: Duration(seconds: 5),
                            pageBuilder: (context,animation, secondaryAnimation) => HomePage(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              return FadeTransition(
                                opacity: animation,child: child,
                              );
                            }
                        ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.arrow_back_rounded, color: Colors.red,)
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '경복궁 근처 조용한 한옥호텔',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children:[
                    Icon(Icons.star, color: Colors.red,size: 15,),
                    SizedBox(width: 3,),
                    Text('4.95 (20)', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                    SizedBox(width: 8,),
                    Text('3개의 리뷰', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
                  ]
                ),
                Row(
                  children: [
                    Text('서울시 종로구, 대한민국 북촌 한옥마을', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                  ]
                ),
                SizedBox(height: 20,),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 270,
                      child: Text(
                        '개인 소유의 룸쉐어 호스트 \n 모두연',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/modulabs.png',
                      ),
                    )
                  ],
                ),
                Text(
                  '2명의 게스트, 1개의 방, 침대 1개',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                Text(
                  '2개의 공용욕실',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 25,),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Image.asset('assets/images/door.png', width: 40, height: 40,),
                    SizedBox(width: 15,),
                    Text('호스트 체크인', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children:[
                    SizedBox(
                      width : 55,
                    ),
                    Text('호스트에게 문의', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400,color: Colors.grey),
                    ),
                  ]
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children:[
                    Row(
                      children:[
                        Text(r'$97.67', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 5,),
                        Text('/박', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                      ]
                    ),
                    Text('6월 2-7일',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      ),
                    ),
                  ]
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),),
                  child : Text('예약 문의하기', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}