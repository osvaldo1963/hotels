import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_mobile_app/src/Components/Cards/listview_card_rooms.dart';
import 'package:travel_mobile_app/src/Components/Header/header.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Rooms();
}

class _Rooms extends State<Rooms> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
            Header(text: "35 Hotels"),
            Expanded(
                child: ListView(
              children: [
                ListViewCardRooms(),
                ListViewCardRooms(),
                ListViewCardRooms(),
                ListViewCardRooms()
              ],
            ))
          ],
        ),
      );
}
