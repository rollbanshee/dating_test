import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyButtonAnonymous extends StatelessWidget {
  const BuyButtonAnonymous({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
          color: AppColors.pink, borderRadius: BorderRadius.circular(8)),
      child: const Text(
        'Купить',
        style: TextStyle(
            fontFamily: AppFonts.ubuntu,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.textWhite),
      ),
    );
  }
}
