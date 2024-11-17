import 'package:flutter/cupertino.dart';
import 'package:the_exam/Models/productModel.dart';
import 'package:the_exam/services/ProductServices.dart';

class ProductsProvider extends ChangeNotifier{
  ProductsModel? productsmodel;
  Future <void>FetchData() async
  {
    productsmodel = await ProductsService.GetData();
    notifyListeners();
  }
}