import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatInputRow extends StatefulWidget {
  const ChatInputRow({
    super.key,
  });

  @override
  State<ChatInputRow> createState() => _ChatInputRowState();
}

class _ChatInputRowState extends State<ChatInputRow> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
            left: BorderSide(color: AppColors.mainBorder),
            // bottom: BorderSide(color: AppColors.mainBorder),
            right: BorderSide(color: AppColors.mainBorder)),
        color: AppColors.mainBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6, bottom: 32),
        child: Row(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: BouncingButton(
                onPress: () {},
                child: SvgPicture.asset(
                  AppSvgs.plus,
                  width: 25,
                ),
              )),
          Expanded(
            child: TextField(
              minLines: 1,
              maxLines: 3,
              controller: controller,
              cursorColor: AppColors.textGrey,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.ubuntu,
                  fontWeight: FontWeight.w300,
                  color: AppColors.textWhite),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: AppColors.textGrey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: AppColors.textGrey)),
                  hintText: 'Сообщение...',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: AppFonts.ubuntu,
                      fontWeight: FontWeight.w300,
                      color: AppColors.textGrey),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      AppSvgs.alien,
                    ),
                  ),
                  suffixIconConstraints: const BoxConstraints(minHeight: 23),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: BouncingButton(
                onPress: () {},
                child: SvgPicture.asset(
                  AppSvgs.mic,
                  width: 25,
                ),
              ))
        ]),
      ),
    );
  }
}
