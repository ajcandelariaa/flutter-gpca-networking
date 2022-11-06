import 'package:flutter/material.dart';

class EventDrawerProvider with ChangeNotifier {
  int _activePage = 1;

  int get activePage {
    return _activePage;
  }

  void setActivePage(int page) {
    _activePage = page;
    notifyListeners();
  }
}