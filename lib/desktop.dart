import 'package:flutter/material.dart';
import 'package:work/const.dart';
import 'package:work/utils/box.dart';
import 'package:work/utils/tile.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myBackground,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          //the rest
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //4 boxes at thne top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),

          ///another
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
