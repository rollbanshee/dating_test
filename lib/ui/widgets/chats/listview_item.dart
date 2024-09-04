import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/screens/chat.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  final int index;
  final String image;
  final String date;
  final String text;
  const ListViewItem({
    super.key,
    required this.image,
    required this.date,
    required this.text,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: BouncingButton(
        behavior: HitTestBehavior.opaque,
        onPress: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Chat(
                        image: image,
                        index: index,
                      )));
        },
        child: Row(
          children: [
            Hero(
              tag: 'Avatar$index',
              child: Container(
                width: 60,
                height: 60,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                foregroundDecoration: index == 0
                    ? BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.textWhite, width: 3),
                      )
                    : null,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: AppFonts.ubuntu,
                        color: AppColors.textWhite),
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: AppFonts.ubuntu,
                        color: AppColors.textWhite),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 12,
            ),
            Visibility(
              visible: index == 1,
              child: Container(
                width: 4,
                height: 4,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.textWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
