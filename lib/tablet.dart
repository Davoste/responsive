import 'package:flutter/material.dart';
import 'package:work/const.dart';
import 'package:work/utils/box.dart';
import 'package:work/utils/tile.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      backgroundColor: myBackground,
      body: Column(
        children: [
          //4 boxes at thne top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  }),
            ),
          ),
          //tiles neloe
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyTile();
                  }))
        ],
      ),
    );
  }
}
