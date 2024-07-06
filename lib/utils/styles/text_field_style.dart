import 'package:flutter/material.dart';

import '../app_colors.dart';


InputDecoration textFieldDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: TextStyle(
      color: AppColors.textColor,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        width: 1,
        color: AppColors.textColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        width: 1,
        color: AppColors.whiteColor,
      ),
    ),
  );
}

textFieldTextStyle() {
  return TextStyle(
    color: AppColors.textColor,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
}
