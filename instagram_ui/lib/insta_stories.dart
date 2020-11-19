import 'package:flutter/material.dart';
class InstaStories extends StatelessWidget {
  //const InstaStories({Key key}) : super(key: key);
  final topText=Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Stories',style: TextStyle(fontWeight: FontWeight.bold),),
      Row(children: [
        IconButton(icon: Icon(Icons.play_arrow), onPressed: (){}),
        Text('Watch All',style: TextStyle(fontWeight: FontWeight.bold),)
      ],),
    ],
  );

  final stories= Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder:(context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // boxShadow:BoxShadow(color: Colors.white70,spreadRadius: 1),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage('https://pakistani.pk/uploads/reviews/photos/original/ac/c9/ad/Sushant20Singh20Rajput2025-66-1475852296.jpg'),
                ),
              ),

            ),
            index==0?Positioned(
              right: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: Icon(Icons.add,size: 14.0,color: Colors.white,),
            )):Container()
          ],
        ), 
      ),
    ), 
    );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:15.0,right: 15.0,bottom:1,top: 1),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}