import 'package:flutter/widgets.dart';
final class AppRadius {
  AppRadius._();

  static const Radius sm = Radius.circular(8);
  static const Radius md = Radius.circular(12);
  static const Radius lg = Radius.circular(16);
  static const Radius xl = Radius.circular(24);

  static const BorderRadius small =
      BorderRadius.all(sm);

  static const BorderRadius medium =
      BorderRadius.all(md);

  static const BorderRadius large =
      BorderRadius.all(lg);

  static const BorderRadius extraLarge =
      BorderRadius.all(xl);
}

