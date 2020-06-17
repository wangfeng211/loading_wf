import './route_handler.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {

  static String title = '';
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  // 配置路径
  static Router router;
  static const  String secondPage = "/secondPage"; 

  

  // 路由配置
  static void configureRoutes(Router router) {
     router.notFoundHandler = Handler(
       handlerFunc: (BuildContext context, Map<String, List<String>> params) {
       print("ROUTE WAS NOT FOUND !!!");
     });

    router.define(secondPage, handler:secondHandler, transitionType: TransitionType.native);
  }
}