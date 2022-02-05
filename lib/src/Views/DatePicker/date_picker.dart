import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travel_mobile_app/src/Components/Header/header.dart';
import 'package:travel_mobile_app/src/Views/DatePicker/Body/date_picker_body.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _DatePicker();
}

class _DatePicker extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Header(text: "Select Dates"),
          Expanded(
              flex: 1,
              child: DatePickerBody(
                data: const {
                  "start_date": "15 Jun",
                  "start_day": "Thursday",
                  "end_date": "15 Jun",
                  "end_day": "Thursday",
                },
              )),
          Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.range,
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs dateRage) {
                    var startDate = dateRage.value.startDate;
                    var endDate = dateRage.value.endDate;
                    if (startDate != null && endDate != null) {
                      Navigator.of(context).pushNamed('/hotels');
                    }
                  },
                ),
              ))
        ],
      ),
    );
  }
}
