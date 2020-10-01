import 'package:flutter/material.dart';

p(message) {
  if (message is String) {
    debugPrint('${DateTime.now()} - $message');
  } else {
    print(message);
  }
}

const BLUE_DOT = "🔵";
const BLUE_HEART = '💙';
