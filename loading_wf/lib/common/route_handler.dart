import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:loading_wf/pages/second_page.dart';


// 配置清单路由

Handler secondHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SecondPage();
});

