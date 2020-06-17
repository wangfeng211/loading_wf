import 'package:flutter/material.dart';
import 'package:loading_wf/common/application.dart';
import 'package:loading_wf/common/routes.dart';
import 'package:loading_wf/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() {
    // TODO: implement createState
    return _FirstPageState();
  }
}

class _FirstPageState extends State <FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('')
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            FlatButton(
              onPressed: (){

                Application.router.navigateTo(context, Routes.secondPage);

//                Navigator.push(context, MaterialPageRoute(builder: (BuildContext cxt){
//                  return SecondPage();
//                }));
              },
              child: Text('点击跳转'),
            )
          ]
        )
      )
    );
  }
}