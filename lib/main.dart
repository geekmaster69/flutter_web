import 'package:flutter/material.dart';

void main() {

    String myurl = Uri.base.toString(); //get complete url
  String para1 = Uri.base.queryParameters["para1"] ?? ''; //get parameter with attribute "para1"
  String para2 = Uri.base.queryParameters["para2"] ?? ''; 
  runApp( MainApp(myurl: myurl, para1: para1, para2:para2));
}

class MainApp extends StatefulWidget {
  final String myurl;
  final String para1;
  final String para2;
 
  const MainApp({super.key, this.myurl = '', this.para1= '', this.para2 =''});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
       body: Container( 
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  //display parameters and URL here
                   Text("Parameter 1 = ${widget.para1}"),
                   Text("Parameter 2 = " + widget.para2),
                   Text("URL = " + widget.myurl)
                ],)
              )
      ),
    );
  }
}
