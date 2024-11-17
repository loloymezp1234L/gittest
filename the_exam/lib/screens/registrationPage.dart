import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_exam/provider/registrationprovider.dart';
import 'LoginPage.dart';
import 'ProductsPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
//kkkkkkkkkkkk
  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    TextEditingController NameController = TextEditingController();
    TextEditingController PhoneController = TextEditingController();
    final _key = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Center(
            child: Text("SignUp Page",
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



                          controller: NameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              hintText: " Enter Name ..."
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
                          controller: PhoneController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              hintText: " Enter Phone ..."
                          ),
                        ),
                        SizedBox(height: 20,),

                        ElevatedButton(onPressed: () async {
                          if(_key.currentState!.validate())
                            {
                              bool signup = await value.AddSignUp(
                                  NameController.text,
                                  PhoneController.text,
                                  EmailController.text,
                                  PasswordController.text);

                              if (signup) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => LoginPage(),));
                              }
                            }


                        }, child: Text("Sign UP")),


                      ],
                    ),

                  ),
                  SizedBox(height: 15,),





                  TextButton(
                      child: Text("Already has an account?"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => LoginPage(),));
                      }),

                  SizedBox(height: 60,),


                  ElevatedButton(onPressed: (){


                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ProductsPage(),));
                    }, child: Icon(Icons.integration_instructions_sharp),

                  )],

              ),
            ),
          );
        })
    );
  }

}
