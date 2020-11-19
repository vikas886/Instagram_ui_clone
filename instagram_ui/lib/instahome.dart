import 'package:flutter/material.dart';
import 'package:instagram_ui/insta_body.dart';

class InstaHome extends StatelessWidget {
  const InstaHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: Icon(Icons.camera_alt),
        title: SizedBox(
          height: 35.0,
          child: Image.asset('assets/images/insta_logo.png'),
        ),
        actions: [
            Padding(
              padding: EdgeInsets.only(right:12.0),
              child: Icon(Icons.send),
            ),
        ],
      ),
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: (){}),
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.add_box), onPressed: (){}),
            IconButton(icon: Icon(Icons.favorite), onPressed: (){}),
            IconButton(icon: Icon(Icons.account_box_rounded), onPressed: (){}),
            
          ],
        ),
      ),
    );
  }
}