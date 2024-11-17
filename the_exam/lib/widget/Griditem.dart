import 'package:flutter/material.dart';
import 'package:the_exam/screens/DetailsPage.dart';

class GridItem extends StatelessWidget {
   GridItem({super.key, required this.Img, required this.Name, required this.Price, required this.Description});
  String Img;
  String Name;
  var Price;
  String Description;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsPage(Name: Name,Img:Img,Description: Description,);
        },
        ));
      },
      child: Card(
        child: Column(
          children: [
            Image.network(Img),
            Text(Name),
            Text("${Price}")
          ],
        ),
      ),
    );
  }
}
