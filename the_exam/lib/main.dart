import 'package:flutter/material.dart';
import 'package:the_exam/provider/productsprovider.dart';
import 'package:the_exam/provider/registrationprovider.dart';
import 'package:the_exam/screens/loginPage.dart';
import 'package:the_exam/Screens/RegistrationPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:
    [
      ChangeNotifierProvider(create: (context) => RegistrationProvider(),),
      ChangeNotifierProvider(create: (context) => ProductsProvider(),)
    ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
    ),
    );
  }
}
