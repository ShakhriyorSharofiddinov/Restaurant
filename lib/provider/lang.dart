import 'package:flutter/cupertino.dart';

class LangProvider extends ChangeNotifier {

  bool _isProductSelected = false;

  void isItemSelected(value){
    _isProductSelected = value;
    notifyListeners();
  }

  bool getItemSelected(){
    return _isProductSelected;
  }

  void langChanged () {
    notifyListeners();
  }
  
}