import 'package:flutter/material.dart';
import 'package:hacktheglobe2020v2/medicationInstructions.dart';

Widget medicationEffects(
    BuildContext context, String medicationName, String medicationEffects, String medicationVisualDescription) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Text(
            medicationName,
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            " is for:",
            style: Theme.of(context).textTheme.display4,
          ),
        ],
      ),
      Align(alignment: Alignment.topLeft, child: Text(medicationEffects)),
      Row(
        children: <Widget>[
          Text(
            medicationName,
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            " looks like:",
            style: Theme.of(context).textTheme.display4,
          ),
        ],
      ),
      Align(alignment: Alignment.topLeft, child: Text(medicationVisualDescription)),
    ],
  );
}

class MedicationCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medication Check"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          medicationEffects(context, "Advil", "•Headaches","•Blue, liquid gel capsule"),
          Text("Do you believe this is your medication?", style: Theme.of(context).textTheme.body2,),
          RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MedicationInstructions()));
              },
              color: Colors.grey,
              splashColor: Theme.of(context).backgroundColor,
              child: Text("Confirm"))
        ],
      ),
    );
  }
}
