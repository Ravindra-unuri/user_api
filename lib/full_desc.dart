import 'package:flutter/material.dart';
import 'package:user_api/model/article.dart';


class fullNews extends StatelessWidget {
  Article snapshot;
  fullNews({Key? key,required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User')),
      backgroundColor: Colors.pinkAccent,
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: Expanded(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          child: Image.network('${snapshot.avatar}',)
                      )
                  ),
                  SizedBox(height: 30),
                  Text('Email ID  :  '+'${snapshot.email}',style: TextStyle(fontSize: 20,color: Colors.white,backgroundColor: Colors.black26 )),
                  SizedBox(height: 30),
                  Text('First Name  :  '+'${snapshot.first_name}',style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),
                  Text('Last Name  :  '+'${snapshot.last_name}',style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}