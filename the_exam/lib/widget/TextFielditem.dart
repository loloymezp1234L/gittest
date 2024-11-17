import 'package:flutter/material.dart';
class TextFieldItem extends StatelessWidget {
  TextFieldItem({super.key, required this. EmailController, required this.PasswordController, required this.NameController, required this.PhoneController});
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController NameController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    )
    );

  }
}
