import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/screens/anonymous.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ChatsSection1 extends StatelessWidget {
  const ChatsSection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'ЧАТЫ',
          style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: AppFonts.ubuntu),
        ),
        const Spacer(),
        BouncingButton(
          behavior: HitTestBehavior.opaque,
          onPress: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: AppColors.blueDark,
                shape: const RoundedRectangleBorder(),
                builder: (context) => const Anonymous());
          },
          child: Row(
            children: [
              const Text(
                'OFF',
                style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.ubuntu),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(5, 4.5, 5, 3.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.grey2),
                child: SvgPicture.asset(
                  AppSvgs.anonymous,
                  height: 12,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
