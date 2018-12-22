import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int counter = 0;

void _increment() {
    setState(() {
          counter = counter+1;
        });
}

void _decrement() {
    setState(() {
          counter = counter-1;
        });
}

void _reset() {
    setState(() {
          counter = 0;
        });
}


Widget _bodyBuilder() {
  return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$counter', style: new TextStyle(
            fontSize: 100.0,
            color: Color(0xFF2F417E),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            new Container(
              padding: const EdgeInsets.all(8.0),
              child:   RaisedButton(
            color: Color(0xFF2F417E),
            textColor: Color(0xFFFFFFFF),
            child: Icon(Icons.add),
            onPressed: _increment,
          ),
            ),
            
            
            new Container(
               padding: const EdgeInsets.all(8.0),
              child:   RaisedButton(
            color: Color(0xFF2F417E),
            textColor: Color(0xFFFFFFFF),
            child: Icon(Icons.remove),
            onPressed: _decrement,
          ),
            ),



          new Container(
             padding: const EdgeInsets.all(8.0),
              child:   RaisedButton(
            color: Color(0xFF2F417E),
            textColor: Color(0xFFFFFFFF),
            child: Icon(Icons.restore),
            onPressed: _reset,
          ),
            )

            ],
          )
          
        ],
      ),
      )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Color(0xFF2F417E),
      ),
      body: _bodyBuilder(),
    );
  }
}