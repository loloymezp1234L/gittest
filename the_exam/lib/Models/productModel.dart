class ProductsModel
{
  List <dynamic> data;
  ProductsModel({required this.data});

  factory ProductsModel.fromJson(Map<String, dynamic>json)
  {

      return ProductsModel(data: json["data"]["products"]);
  }
}