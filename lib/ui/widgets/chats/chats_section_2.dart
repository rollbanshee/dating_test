import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatsSection2 extends StatelessWidget {
  const ChatsSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: BouncingButton(
        behavior: HitTestBehavior.opaque,
        onPress: () {},
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.purpleDark),
              child: SvgPicture.asset(
                AppSvgs.likefilled,
                height: 24,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              '44 человека тебя лайкнули',
              style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.ubuntu),
            ),
            const Spacer(),
            const SizedBox(
              width: 12,
            ),
            Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.textWhite),
            )
          ],
        ),
      ),
    );
  }
}
