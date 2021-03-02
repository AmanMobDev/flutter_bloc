import 'package:bloc_pattern/model/projects_list.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc/mybloc.dart';

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
            },
          ),
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<Modeldata> snapshot) {
    return ListTile(
        title: Text(
          snapshot.hasData
              ? snapshot.data.title.toString().toUpperCase()
              : "No Data",
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        trailing: Icon(
          Icons.arrow_right,
          color: Colors.black,
          size: 30.0,
        ));
  }
}
