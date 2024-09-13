import 'dart:convert';

import 'package:docmob/model/personaldetails.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<void> postuserdetails(doctormodel doctormodel, ) async {
    try{

    final response = await http.post(Uri.parse(''),
    headers: {'Content-Type': 'application/json'} ,
    body: json.encode((doctormodel.toJson())));
    if(response.statusCode==200){
      print("Added successfully");
    }
    else{
    print(response.statusCode);

    }}catch(e){
      print(e);
    }
  }


  
}
