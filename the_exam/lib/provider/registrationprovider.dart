import 'package:flutter/cupertino.dart';
import 'package:the_exam/Models/registrationModel.dart';
import 'package:the_exam/services/RegistrationServices.dart';

class RegistrationProvider extends ChangeNotifier
{
  RegistrationModel? registrationModelData;
  Future<bool>AddSignUp(String Name, String Phone, String Email, String Password) async
  {
    try{
      registrationModelData= await RegistrationService.PostSignUp(Name:Name, Phone: Phone, Email:Email, Password: Password);
      if(registrationModelData?.status==true)
        {
          notifyListeners();
          return true;
        }
      else
        {
          print("error");
          return false;
        }
    }
    catch(e)
    {
      print(e);
      return false;
    }


  }

  Future<bool>AddSignIn(String Email, String Password) async
  {
    try{
      registrationModelData= await RegistrationService.PostSignIn(Email:Email, Password:Password);
      if(registrationModelData?.status==true)
        {
          notifyListeners();
          return true;
        }
      else
        {
          return false;
        }

    }
    catch(e)
    {

      throw Exception("error : ${e}");
    }
  }
}
