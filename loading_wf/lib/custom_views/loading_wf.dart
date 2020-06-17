
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_wf/common/routes.dart';
import 'package:loading_wf/custom_views/loading_didlog.dart';

///加载弹框
class LoadingWf {
  static bool _isShowing = false;

  ///展示
  static void showProgress({BuildContext context, Widget child = const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Color(0xFF5CDBD3)),)}) {
    if(!_isShowing) {
      _isShowing = true;
      Routes.navigatorKey.currentState.push(
//        context,
        _PopRoute(
          child: _Progress(
            child: child,
          ),
        ),
      );
    }
  }

  ///隐藏
  static void dismiss({BuildContext context}) {
    if (_isShowing) {
      Routes.navigatorKey.currentState.pop();
      _isShowing = false;
    }
  }
}

///Widget
class _Progress extends StatelessWidget {
  final Widget child;

  _Progress({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(180, 50, 50, 50),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoadingDialog(text: "加载中...",),

//              SpinKitCircle(
//                color: Colors.white,
//                size: 50.0,
//              ),

            ],
          ),
        ));
  }
}

///Route
class _PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  _PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}