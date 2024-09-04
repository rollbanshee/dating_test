import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatSection1 extends StatelessWidget {
  const ChatSection1({
    super.key,
    required this.image,
    required this.index,
  });

  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17),
      child: Row(
        children: [
          BouncingButton(
            behavior: HitTestBehavior.opaque,
            onPress: () => Navigator.pop(context),
            child: Container(
              width: 26,
              height: 26,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                AppSvgs.arrowBack,
                width: 7,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Hero(
            tag: 'Avatar$index',
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              width: 30,
              height: 30,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(),
          BouncingButton(
            onPress: () {},
            child: const Icon(
              CupertinoIcons.ellipsis_vertical,
              size: 22,
              color: AppColors.textWhite,
            ),
          ),
        ],
      ),
    );
  }
}
