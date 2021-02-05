import 'package:flutter/material.dart';

class FairytalesHistory with ChangeNotifier {
  List<int> _history = [];

  List<int> get history => [..._history];

  int get currentIndex {
    return _history.length == 1 ? null : _history.last;
  }

  int get previousIndex {
    return _history[_history.length - 1];
  }

  void addIndexToHistory(int index) {
    _history.add(index);
    //notifyListeners();
    print(_history);
  }

  void removeIndexFromHistory() {
    if (_history.isNotEmpty) _history.removeLast();
    // notifyListeners();
  }
}
