import 'package:flutter/material.dart';

class ListViewCardHotels extends StatelessWidget {
  const ListViewCardHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [Text("title"), Text("subtitle")],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amberAccent,
                ))
          ],
        ),
      ),
    );
  }
}
