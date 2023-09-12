import 'package:flutter/material.dart';


class TripCard extends StatelessWidget{
  TripCard({super.key});

  Image img0 = Image.asset('assets/images/seoul.webp');
  Image img1 = Image.asset('assets/images/busan.webp');
  Image img2 = Image.asset('assets/images/chuncheon.webp');


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/seoul_detail');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children:<Widget> [
                    Container(
                      height: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: img0.image, fit: BoxFit.cover,), //img.image는 위에 변수를 만들어줌
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(Icons.favorite_border, color: Colors.white, size: 30,),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children:[
                    Text(
                      'Seoul, Republic of Korea',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size:15,color: Colors.red,),
                        SizedBox(width: 5,),
                        Text(
                          '4.93',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ]
                ),
                Text(
                  '19km',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '6월 1 - 15일',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      r'97.89$', //$ 표시를 위해 r을 붙여줌(화폐단위로 인식하도록)
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      ' /1박',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children:<Widget> [
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: img1.image, fit: BoxFit.cover,), //img.image는 위에 변수를 만들어줌
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Icon(Icons.favorite_border, color: Colors.white, size: 30,),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                  children:[
                    Text(
                      'Busan, Republic of Korea',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size:15,color: Colors.red,),
                        SizedBox(width: 5,),
                        Text(
                          '4.83',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ]
              ),
              Text(
                '325km',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Text(
                '5월 1 - 15일',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    r'80.89$', //$ 표시를 위해 r을 붙여줌(화폐단위로 인식하도록)
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    ' /1박',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),SizedBox(
            height: 30,
          ),Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children:<Widget> [
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: img2.image, fit: BoxFit.cover,), //img.image는 위에 변수를 만들어줌
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Icon(Icons.favorite_border, color: Colors.white, size: 30,),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                  children:[
                    Text(
                      'Chuncheon, Republic of Korea',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size:15,color: Colors.red,),
                        SizedBox(width: 5,),
                        Text(
                          '4.91',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ]
              ),
              Text(
                '250km',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Text(
                '4월 1 - 15일',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    r'77.89$', //$ 표시를 위해 r을 붙여줌(화폐단위로 인식하도록)
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    ' /1박',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ) ,

    );
  }

}