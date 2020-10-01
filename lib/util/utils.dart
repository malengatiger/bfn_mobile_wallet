import 'package:flutter/material.dart';

p(message) {
  if (message is String) {
    debugPrint('${DateTime.now()} - $message');
  } else {
    print(message);
  }
}

const BLUE_DOT = "🔵 ";
const BLUE_HEART = '💙 ';
const PINK_FLOWER = '🌸 ';
const YELLOW_FLOWER = '🌼 ';
const FERN = '🌿 ';
const APPLE = '🍏 ';
const PEACH = '🍊 ';
const PEAR = '🍐 ';
const ERROR = '👿 ';
