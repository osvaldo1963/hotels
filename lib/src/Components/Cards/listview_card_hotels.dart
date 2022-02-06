import 'package:flutter/material.dart';

class ListViewCardHotels extends StatelessWidget {
  const ListViewCardHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/rooms');
      },
      child: Card(
        child: Container(
          height: 100,
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber,
                    child: Image.network(
                        "https://www.lewislandscape.com/wp-content/grand-media/image/GalleryImage1.jpg"),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("title"), Text("subtitle")],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("4.8"), Icon(Icons.star_outline)],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
