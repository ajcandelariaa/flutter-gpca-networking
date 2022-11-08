import 'package:flutter/material.dart';

class SocialFeedsProvider with ChangeNotifier {
  int _currentIndex = 0;
  Color _currentColor = const Color(0xFF3b5998);

  int get currentIndex => _currentIndex;
  Color get currentColor {
    switch (_currentIndex) {
      case 0:
        _currentColor = const Color(0xFF3b5998);
        break;
      case 1:
        _currentColor = const Color(0xFFC32AA3);
        break;
      case 2:
        _currentColor = const Color(0xFFFF0000);
        break;
      case 3:
        _currentColor = const Color(0xFF007bb6);
        break;
      case 4:
        _currentColor = const Color(0xFF00aced);
        break;
      default:
        _currentColor = Colors.grey;
    }
    return _currentColor;
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
