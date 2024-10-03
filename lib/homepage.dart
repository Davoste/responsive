import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mboka Arena"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.amber,
                  child: Text("Gig 1"),
                ),
                Container(
                  color: Colors.green,
                  child: Text("Gig 2"),
                ),
                Container(
                  color: Colors.blue,
                  child: Text("Gig 3"),
                ),
                Container(
                  color: Colors.red,
                  child: Text("Gig 4"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 8),
                  color: Colors.amber,
                  child: Text("Gig 1"),
                ),
                Container(
                  color: Colors.green,
                  child: Text("Gig 2"),
                ),
                Container(
                  color: Colors.blue,
                  child: Text("Gig 3"),
                ),
                Container(
                  color: Colors.red,
                  child: Text("Gig 4"),
                ),
              ],
            )
          ],
        ));
  }
}
