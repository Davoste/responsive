import 'package:flutter/material.dart';
import 'package:work/const.dart';
import 'package:work/utils/box.dart';
import 'package:work/utils/tile.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
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
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
