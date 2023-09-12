import 'package:flutter/material.dart';

class CategoryNav extends StatelessWidget{
  CategoryNav({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(left: 30,  top: 20),
        // ignore: prefer_const_constructors
        child: Column(children: [
          SizedBox(
            height: 67,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget> [
                Column(
                  children:[
                    Image.asset('assets/images/fire.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Trending',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/palm-tree.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Island',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/cave.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Cave',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/cactus.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Desert',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/island.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Tropical',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/art.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Art',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/swimming-pool.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Swimming Pool',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),SizedBox(width: 30,),
                Column(
                  children:[
                    Image.asset('assets/images/villa.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(height: 5,
                    ),
                    Text(
                      'Mention',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],),
    );
  }
}