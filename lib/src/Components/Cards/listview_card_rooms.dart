import 'package:flutter/material.dart';

class ListViewCardRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.all(15),
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                "https://www.lewislandscape.com/wp-content/grand-media/image/GalleryImage1.jpg",
                fit: BoxFit.cover,
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
