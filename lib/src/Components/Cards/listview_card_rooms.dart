import 'package:flutter/material.dart';

class ListViewCardRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.lewislandscape.com/wp-content/grand-media/image/GalleryImage1.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Hilton Thai Hotel"),
                      Text("Los Angeles, California")
                    ],
                  ),
                  Spacer(),
                  Text("4.8"),
                  Icon(Icons.star_outline)
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [Text("from 195 /day"), Spacer(), Text("view rooms")],
              ),
            )
          ],
        ),
      ));
}
