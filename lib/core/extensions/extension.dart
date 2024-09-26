import 'package:flutter/material.dart';

extension SizedBoxExtension on int {
  Widget sH() => SizedBox(
        height: toDouble(),
      );
  Widget sW() => SizedBox(
        width: toDouble(),
      );
}
