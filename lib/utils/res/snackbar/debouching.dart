import 'dart:async';

import 'package:flutter/material.dart';

class AppDebouncer {
  final int milliseconds;
  Timer? _timer;
  AppDebouncer({required this.milliseconds});
  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
