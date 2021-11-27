import 'package:flutter/foundation.dart';

class AddTaskProvider extends ChangeNotifier {
  bool _status = false;

  String _response = '';

  bool get getStatus => _status;

  String get getResponse => _response;



  void addTask() async {
    
  }
}
