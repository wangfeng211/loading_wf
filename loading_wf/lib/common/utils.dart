import 'package:loading_wf/custom_views/loading_wf.dart';

class Utils {
  static showLoading(){
    LoadingWf.showProgress();
  }

  static dismissLoading(){
    LoadingWf.dismiss();
  }
}