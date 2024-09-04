// ignore_for_file: deprecated_member_use

import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/widgets/chat/chat_input_row.dart';
import 'package:dating_test/ui/widgets/chat/chat_section_1.dart';
import 'package:dating_test/ui/widgets/chat/chat_section_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatelessWidget {
  final String image;
  final int index;

  const Chat({super.key, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Column(
              children: [
                ChatSection1(
                  image: image,
                  index: index,
                ),
                SizedBox(
                  height: 47.h,
                ),
                const ChatSection2(),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.mainBackground,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        border: Border.all(color: AppColors.mainBorder)),
                    child: const SafeArea(
                      top: false,
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 35),
                            child: Text(
                              'Начни общение',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: AppFonts.ubuntu,
                                  color: AppColors.textGrey),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Align(alignment: Alignment.bottomCenter, child: ChatInputRow()),
          ],
        ),
      ),
    );
  }
}




