import 'package:flutter/material.dart';
import 'package:quran_app/core/style/colors.dart';

BoxDecoration counterDecoration({required Color color}) {
  return BoxDecoration(
      border: Border.all(color: ColorApp.colorPurple, width: 7),
      shape: BoxShape.circle);
}
