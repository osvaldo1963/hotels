import 'package:flutter/material.dart';

class DatePickerBody extends StatelessWidget {
  DatePickerBody({Key? key, required this.data}) : super(key: key);
  Map<String, String> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
                child: FittedBox(
                  child: Text(data['start_date'].toString()),
                ),
              ),
              Text(data['start_day'].toString())
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
                child: FittedBox(
                  child: Text(data['end_date'].toString()),
                ),
              ),
              Text(data['end_day'].toString())
            ],
          ),
        ],
      ),
    );
  }
}
