import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ContextProvider with ChangeNotifier {
  bool isLoading = true;
  var apiData;
  Future getData() async {
    http.Response response;
    response = await http
        .get(Uri.parse('http://www.omdbapi.com/?i=tt3896198&apikey=fb29b73e'));
    if (response.statusCode == 200) {
      apiData = jsonDecode(response.body);
      isLoading = false;
      notifyListeners();
    }
  }
}
