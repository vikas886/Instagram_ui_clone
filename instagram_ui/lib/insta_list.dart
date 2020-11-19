import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/insta_stories.dart';

class InstaList extends StatelessWidget {
  const InstaList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device=MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) =>index==0?SizedBox(
        child: InstaStories(),
        height: device.height/5.4,
        
      ):Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit:BoxFit.fill,
                          image: NetworkImage('https://pakistani.pk/uploads/reviews/photos/original/ac/c9/ad/Sushant20Singh20Rajput2025-66-1475852296.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('_vikasmishra_',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                IconButton(icon:Icon(Icons.more_vert), onPressed:(){}),
            ],),
          ),
          //2nd row
          Flexible(
            fit: FlexFit.loose,
            child: Image.network('https://www.suntiros.com/wp-content/uploads/2016/12/Download-Latest-Full-HD-Sushant-Singh-Rajput-Pictures-Photos.jpg',fit:BoxFit.cover),
          ),

          //3rd row
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(width: 16,),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16,),
                    Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark),
              ],
            ),
            ),
            //4th row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Liked by pawankumar_, pk and 234,556 others.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            //5th row
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://pakistani.pk/uploads/reviews/photos/original/ac/c9/ad/Sushant20Singh20Rajput2025-66-1475852296.jpg'),
                      )
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add a comment...',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //6th row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
               child: Text(
                 '1 day ago',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),
               ),
            ),
        ],
      ) ,
    );
  }
}