import 'dart:async';

import 'package:bloc_pattern/model/projects_list.dart';
import 'package:bloc_pattern/repositry/data_reposityr.dart';
import 'package:flutter/rendering.dart';

class MyBloc {
  final _repositry = DataRepo();
  final _streamController = StreamController<Modeldata>();
  Stream<Modeldata> get sinkInput => _streamController.stream;

  fecthlist() async {
    debugPrint("MyBloc");
    Modeldata projectsList = await _repositry.fetchProjects();
    _streamController.sink.add(projectsList);
  }

  dispose() {
    _streamController.close();
  }
}
