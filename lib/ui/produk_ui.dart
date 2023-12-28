import 'package:flutter_application_1/model/produk.dart';
import 'package:flutter_application_1/helper/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdukUi extends ChangeNotifier {
  List<Product> product = [];
  bool isLoading = true;

  ProdukUi() {
    getData();
  }

  void getData() {
    isLoading = true;
    notifyListeners();
    api.getProduk().then((value) {
      isLoading = false;
      if (value != null) {
        product = value;
      }
      notifyListeners();
    });
  }
}
