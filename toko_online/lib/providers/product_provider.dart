import 'package:toko_online/models/product_model.dart';
import 'package:toko_online/services/product_service.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier{
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async{

    try {
      List<ProductModel> product = await ProductService().getProducts();
      _products = products;
    } catch (e)  {
     print(e);
    }
  }
}