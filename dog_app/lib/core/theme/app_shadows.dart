import 'package:flutter/material.dart';
class AppShadows {
  static final card = [
    BoxShadow(
      color: Colors.black.withOpacity(.04),
      blurRadius: 20,
      offset: Offset(0, 4),
    ),
  ];

  static final floating = [
    BoxShadow(
      color: Colors.black.withOpacity(.08),
      blurRadius: 32,
      offset: Offset(0, 12),
    ),
  ];
}