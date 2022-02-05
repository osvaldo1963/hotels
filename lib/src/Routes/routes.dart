import 'package:flutter/material.dart';
import 'package:travel_mobile_app/src/Views/DatePicker/date_picker.dart';
import 'package:travel_mobile_app/src/Views/Destinations/home_destination.dart';
import 'package:travel_mobile_app/src/Views/Hotels/hotels.dart';

class Routes {
  static Map<String, WidgetBuilder> getAppRoutes() {
    return <String, WidgetBuilder>{
      '/home_destination': (BuildContext context) => const HomeDestination(),
      '/datepicker': (BuildContext context) => const DatePicker(),
      '/hotels': (BuildContext context) => const Hotels(),
    };
  }
}
