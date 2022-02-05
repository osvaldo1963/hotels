import 'package:flutter/material.dart';

class ListViewCardDestination extends StatelessWidget {
  const ListViewCardDestination({Key? key, required this.onPress})
      : super(key: key);
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 310,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: InkWell(
          onTap: () => onPress(),
          child: Image.network(
            "https://www.lewislandscape.com/wp-content/grand-media/image/GalleryImage1.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
