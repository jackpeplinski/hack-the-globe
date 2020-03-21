import 'package:flutter/material.dart';

Widget medicationInstructions(BuildContext context, String medicationName,
    String frequency, String ingestion) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Text(
            medicationName,
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            " is taken:",
            style: Theme.of(context).textTheme.display4,
          ),
        ],
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(frequency),
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(ingestion),
      ),
    ],
  );
}

class MedicationInstructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Medication Instructions"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            medicationInstructions(
                context, "Advil", "•Twice daily, max every hour", "•Orally"),
            Text("Have you taken your medication today?", style: Theme.of(context).textTheme.body2,),
            RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MedicationInstructions()));
                },
                color: Colors.grey,
                splashColor: Theme.of(context).backgroundColor,
                child: Text("Confirm"))
          ],
        ));
  }
}
