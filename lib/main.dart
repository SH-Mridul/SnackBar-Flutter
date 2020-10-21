// import 'package:MusicApp/pages/PageOne.dart';
// import 'package:MusicApp/pages/PageTwo.dart';
import 'dart:ui';

import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
          appBar: AppBar(
            title: Text('Snackbar'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Center(
            child:Builder(
              builder: (BuildContext con){
                return RaisedButton(
                  onPressed: (){
                    
                    Scaffold.of(con).showSnackBar(SnackBar(
                      content: Text('I\'m Mridul'),
                      duration: Duration(seconds: 10),
                      action: SnackBarAction(label: 'ok', onPressed:(){}),
                      ));
                  },
                  color: Colors.black,
                  child: Text('Click',style:TextStyle(color:Colors.white)),
                  );
              },
            )
          ),
      )
    );
  }
}
