import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
   @override
  _MyAppState createState() => _MyAppState();
}

// create class for MyAppState
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter Form Validation Demo"),
        ),
        body: new SingleChildScrollView(
          child: Container(
              margin: new EdgeInsets.all(15.0),
              child: new Form(child: FormUI()),
          ),
        ),
      ),
    );
  }

  // Form UI Widget
  Widget FormUI(){
  return new Column(
      children: <Widget>[

        new TextFormField(
          decoration: new InputDecoration(hintText: "Full Name"),
          keyboardType: TextInputType.text,
          maxLength: 32,
        ),

        new TextFormField(
          decoration: new InputDecoration(hintText: "Mobile Number"),
          keyboardType: TextInputType.number,
          maxLength: 10,
        ),

        new TextFormField(
          decoration: new InputDecoration(hintText: "Email Address"),
          keyboardType: TextInputType.emailAddress,
          maxLength: 50,
        ),

        new TextFormField(
          decoration: new InputDecoration(hintText: 'Address'),
          keyboardType: TextInputType.multiline,
          maxLength: 100,
        ),

        new SizedBox(height: 15.0,),

        new RaisedButton(
            onPressed: _sendToServer(),
            child: new Text('Submit'),
        ),


      ],
  );
  }

  _sendToServer(){

  }


}


