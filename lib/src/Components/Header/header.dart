import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 35, right: 35, bottom: 15),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Icon(
            Icons.more_horiz,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
