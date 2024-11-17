import 'package:dio/dio.dart';
import 'package:the_exam/Models/productModel.dart';

class ProductsService {
  static Dio dio = Dio();

  static Future <ProductsModel> GetData() async
  {
    try
    {
      Response response = await dio.get("https://student.valuxapps.com/api/home");
      return ProductsModel.fromJson(response.data);
    }
    catch(e)
    {
      print("error fetching data : ${e}");
      throw Exception("error");
    }

  }
}