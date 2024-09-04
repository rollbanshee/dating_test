import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/cupertino.dart';

class ChatSection2 extends StatelessWidget {
  const ChatSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
          color: AppColors.purple,
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.rocket,
                width: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                '2 общих соблазна',
                style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.w300,
                    fontFamily: AppFonts.ubuntu,
                    fontStyle: FontStyle.italic),
              ),
              const Spacer(),
              BouncingButton(
                onPress: () {},
                child: const Icon(
                  CupertinoIcons.xmark,
                  size: 16,
                  color: AppColors.textWhite,
                ),
              ),
            ],
          )),
    );
  }
}
