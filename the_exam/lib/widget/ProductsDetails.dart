import 'package:flutter/material.dart';
class ProductsDetails extends StatelessWidget {
   ProductsDetails({super.key, required this.Img, required this.Name, required this.Description});
  String Img;
  String Name;
  String Description;
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(Img),
        Text(Name),
        Text(Description)
      ],
    );
  }
}
