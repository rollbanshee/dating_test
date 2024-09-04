import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:flutter/material.dart';
class RichTextAnonymous extends StatelessWidget {
  const RichTextAnonymous({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(children: [
      TextSpan(
          text: 'РЕЖИМ',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ubuntu,
              color: AppColors.textWhite)),
      TextSpan(
          text: ' ИНКОГНИТО ',
          style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ubuntu,
              color: AppColors.textWhite)),
      TextSpan(
          text: 'НА 24 ЧАСА',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ubuntu,
              color: AppColors.textWhite)),
    ]));
  }
}