// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

class Data extends ChangeNotifier {
  int _age = 5;
  final List _todo = [];
  final List _pover = [];
  int get age => _age;
  List get todo => _todo;
  List get todoTwo => _todoTwo;
  List get pover => _pover;

  void inctement() {
    _age++;
    notifyListeners();
  }

  void dicrement() {
    _age--;
    notifyListeners();
  }

  void todolist() {
    //первое что пришло в голову если в списке точно 2 элемента но это бред
    if (_todo.isEmpty) {
      _todo.add('gena');
    }
    if (_todo.length == 1) {
      _todo.clear();
      _todo.add('vika');
    }
  }

//по заданию в списке несколько имен
  final List _todoTwo = ['gena', 'vika', 'micha'];

  void todolistTwo() {
    for (var value in _todoTwo) {
      var _pover = value;
    }
    notifyListeners() {}
  }
}
