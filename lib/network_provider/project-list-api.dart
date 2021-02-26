import 'dart:convert';

import 'package:bloc_pattern/model/projects_list.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class ProjectListApi {
  Future<Modeldata> projectList() async {
    debugPrint("Enter call api");
    final response = await http.get(
      "https://jsonplaceholder.typicode.com/todos/1",
    );

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      debugPrint(json.toString());
      return Modeldata.fromJson(json);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load data');
    }
  }
}
