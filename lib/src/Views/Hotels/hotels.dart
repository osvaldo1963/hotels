import 'package:flutter/material.dart';
import 'package:travel_mobile_app/src/Components/Cards/listview_card_hotels.dart';
import 'package:travel_mobile_app/src/Components/Header/hotels_header.dart';

class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Hotels();
}

class _Hotels extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Expanded(flex: 3, child: HotelsHeader()),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    ListViewCardHotels(),
                    ListViewCardHotels(),
                    ListViewCardHotels(),
                    ListViewCardHotels(),
                    ListViewCardHotels(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
