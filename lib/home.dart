import 'package:flutter/material.dart';

import 'medicationCheck.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget inputField(String hintText) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 150, left: 150),
      child: TextField(
        decoration: InputDecoration(
            //icon: Icon(Icons.local_hospital)
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent, width: 5)),
            border: OutlineInputBorder(),
            hintText: hintText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prescription Pad"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Text("Welcome, Taylor Arber",
              style: Theme.of(context).textTheme.display4),
          Text("Enter details below to view prescription steps",
              style: Theme.of(context).textTheme.body1),
          inputField("Medication DIN or Rx number"),
          inputField("First Name"),
          inputField("Last Name"),
          inputField("Date of birth"),
          ToResultsButton(),
        ],
      ),
    );
  }
}

class ToResultsButton extends StatefulWidget {
  @override
  _ToResultsButtonState createState() => _ToResultsButtonState();
}

class _ToResultsButtonState extends State<ToResultsButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: 
          (context) => MedicationCheck()),
        );
      },
      color: Colors.grey,
      splashColor: Colors.red,
      child: Text("Enter"),
    );
  }
}