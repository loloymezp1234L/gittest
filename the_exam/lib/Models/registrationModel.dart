import 'dart:core';

class RegistrationModel
{
  bool? status;

  RegistrationModel({this.status});

  factory RegistrationModel.fromJson(Map<String,dynamic>json)
  {
    return RegistrationModel(status: json["status"]);
  }

}