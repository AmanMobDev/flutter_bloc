import 'package:bloc_pattern/model/projects_list.dart';
import 'package:bloc_pattern/network_provider/project-list-api.dart';
import 'package:flutter/rendering.dart';

class DataRepo {
  final _project_list_provider = ProjectListApi();

  Future<Modeldata> fetchProjects() {
    debugPrint("Call Repo");
    return _project_list_provider.projectList();
  }
}
