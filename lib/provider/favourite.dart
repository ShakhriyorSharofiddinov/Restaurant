import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

class FavouriteProvider extends ChangeNotifier {

  bool _isSelectFavPage = false;
  bool _isSelectProduct = false;

  void isSelectedFavPage(value){
    _isSelectFavPage = value;
    notifyListeners();
  }

  bool getSelectedFavPage(){
    return _isSelectFavPage;
  }

  void isSelectProduct(value){
    _isSelectProduct = value;
    notifyListeners();
  }
  bool getSelectProduct(){
    return _isSelectProduct;
  }

  setFavourite(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(Constants.Fav_product, index);
  }

  getFavourite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey(Constants.Fav_product)) {
      return prefs.getInt(Constants.Fav_product);
    }
    return null;
  }

  setFavList(List<int> indexes) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
      Constants.Fav_products,
      indexes.map((e) => e.toString()).toList(),
    );
  }


  Future<List<int>> getFavList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? res = prefs.getStringList(Constants.Fav_products);
    if (res != null) {
      return res.map((e) => int.parse(e)).toList();
    }
    return List.empty();
  }
}
