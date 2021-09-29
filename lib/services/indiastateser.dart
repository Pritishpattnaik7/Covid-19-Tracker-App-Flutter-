import 'dart:convert';

import 'package:covid19_tracker/models/indiastatesmod.dart';
import 'package:http/http.dart' as http;

class StatesService{
  
  Future <StatesResponse> getStateData() async{
    http.Response response;
    response = await http.get(Uri.parse('https://api.rootnet.in/covid19-in/stats/latest'));
    
    if (response.statusCode == 200){
      StatesResponse statesResponse = StatesResponse.fromJson(jsonDecode(response.body));
    return statesResponse;
    }
    else{
      return null;
    }
  }
}