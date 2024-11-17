import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_exam/provider/registrationprovider.dart';
import 'package:the_exam/screens/registrationPage.dart';
import 'ProductsPage.dart';
import 'RegistrationPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
   final _key = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(
          child: Text("Login Page",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
          ),),
        ),
      ),


      body: Consumer<RegistrationProvider>(builder: (context, value, child) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              children: [

                //profile
                CircleAvatar(backgroundImage: NetworkImage("url"),
                  radius: 40,
                ),


                SizedBox(height: 100,),


                //TextFields
                Form(
                  key: _key,
                  child:
                  Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if(value== null||value.isEmpty)
                          {
                            return "please fill the text field";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        controller: EmailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: " Enter Email ..."
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        validator: (value) {
                          if(value== null||value.isEmpty)
                          {
                            return "please fill the text field";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        controller: PasswordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: " Enter Password ..."
                        ),
                      ),
                      ElevatedButton(onPressed: () async {

                        if(_key.currentState!.validate())
                        {
                          bool signin = await value.AddSignIn(
                              EmailController.text,
                              PasswordController.text);
                          if (signin) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ProductsPage(),));
                          }
                        }


                      }, child: Text("Sign In")),

                    ],
                  ),

                ),
                SizedBox(height: 15,),


                TextButton(onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                }, child: Text("Dont have an account?"))
              ],

            ),
          )
        );
      },

      ),
    );
  }
}