import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget dias() {
    return Container(
        margin: EdgeInsets.only(top: 30.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("D"),
              Text("L"),
              Text("M"),
              Text("M"),
              Text("J"),
              Text("V"),
              Text("S")
            ]));
  }

  Widget fila() {
    List<Widget> days = [];
    List<Widget> weeks = [];
    for(int i = 0; i<=30; i++){
      days.add(Text(i.toString()));
      if (i % 7 == 0){
        weeks.add(Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: days));
        days.clear();
      }
    }

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: weeks
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return MaterialApp(
      title: 'Calendario',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
            color: Colors.white,
            child: Container(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    Center(
                        child: Text("JUN",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.w400))),
                    dias(),
                        fila()
                  ])),
            )),
      ),
    );
  }
}
