import 'package:flutter/material.dart';

class DestinationStore extends ChangeNotifier {
  late Map<String, String> _current = {};
  Map<String, String> get current => _current;
  setCurrent(Map<String, String> value) {
    _current = value;
    notifyListeners();
  }

  late List<Map<String, String>> _destinations = [];
  List<Map<String, String>> get destinations => _destinations;
  setDestinations(List<Map<String, String>> value) {
    _destinations = value;
    notifyListeners();
  }
}
