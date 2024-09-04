import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Likes extends StatelessWidget {
  const Likes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffold,
        body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 597.h,
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                    color: AppColors.mainBackground,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    border: Border.all(color: AppColors.mainBorder)),
                child: const Center(
                  child: Text(
                    'Likes',
                    style: TextStyle(
                        color: AppColors.textWhite,
                        fontFamily: AppFonts.ubuntu,
                        fontWeight: FontWeight.w300,
                        fontSize: 24),
                  ),
                ))));
  }
}
