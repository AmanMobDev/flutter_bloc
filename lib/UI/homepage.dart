import 'package:bloc_pattern/model/projects_list.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc/mybloc.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  MyBloc myBloc = MyBloc();

  @override
  Widget build(BuildContext context) {
    myBloc.fecthlist();
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc "),
      ),
      body: Container(
        child: Center(
          child: StreamBuilder(
              stream: myBloc.sinkInput,
              builder: (context, AsyncSnapshot<Modeldata> snapshot) {
                return buildList(snapshot);
              }),
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<Modeldata> snapshot) {
    return ListTile(
      title: Text(
        snapshot.hasData ? snapshot.data.title.toString() : "No Data",
        style: TextStyle(
            color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
