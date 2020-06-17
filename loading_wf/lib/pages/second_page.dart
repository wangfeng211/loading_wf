import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_wf/common/utils.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() {
    // TODO: implement createState
    return _SecondPageState();
  }
}

class _SecondPageState extends State <SecondPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


//    Utils.showLoading();
//
//    Future.delayed(Duration(seconds: 4),(){
//      Utils.loadingDismiss();
//    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('第二页')
      ),
      body: Center(
        child:Container(
          child: FlatButton(
            onPressed: (){
              Utils.showLoading();
              Future.delayed(Duration(seconds: 5),(){
                Utils.dismissLoading();
              });
            },
            child: Text('点击加载'),
          ),
        )
      ),
    );
  }
}