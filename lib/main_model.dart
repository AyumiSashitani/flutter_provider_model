import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = "元々あるテキストだよ";

  void changeKboyText() {
    kboyText = "値が変わったよ。";
    notifyListeners();
  }
}
