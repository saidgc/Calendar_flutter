import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget fila() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("D"),
          SizedBox(width: 30),
          Text("L"),
          SizedBox(width: 30),
          Text("M"),
          SizedBox(width: 30),
          Text("M"),
          SizedBox(width: 30),
          Text("J"),
          SizedBox(width: 30),
          Text("V"),
          SizedBox(width: 30),
          Text("S")
        ]);
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
              margin: EdgeInsets.only(top: 50),
              child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    Center(
                        child: Text("JUN",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.w400))),
                    SizedBox(height: 30),
                    Center(child: fila()),
                    SizedBox(height: 30),
                    Center(child: fila()),
                    SizedBox(height: 30),
                    Center(child: fila()),
                    SizedBox(height: 30),
                    Center(child: fila()),
                    SizedBox(height: 30),
                    Center(child: fila()),
                    SizedBox(height: 30),
                    Center(child: fila())
                  ])),
            )),
      ),
    );
  }
}
