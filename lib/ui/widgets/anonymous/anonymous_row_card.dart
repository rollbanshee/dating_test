import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class AnonymousRowCard extends StatelessWidget {
  final String price;
  final String count;
  final bool discountCheck;
  final String? discountText;
  const AnonymousRowCard({
    super.key,
    required this.price,
    required this.count,
    required this.discountCheck,
    this.discountText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 11),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
          decoration: BoxDecoration(
              color: AppColors.mainBackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.mainBorder)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    count,
                    style: const TextStyle(
                        fontFamily: AppFonts.ubuntu,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textWhite),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  SvgPicture.asset(
                    AppSvgs.anonymous,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$price ₽',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textWhite),
              )
            ],
          ),
        ),
        Visibility(
          visible: discountCheck,
          child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(90, 45)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(255, 71, 25, 0.4),
                        spreadRadius: 3,
                        blurRadius: 4),
                  ]),
              child: SvgPicture.asset(AppSvgs.discount)),
        ),
        Visibility(
            visible: discountCheck,
            child: Text(
              discountText ?? '',
              style: const TextStyle(
                  fontFamily: AppFonts.ubuntu,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.brown),
            ))
      ],
    );
  }
}
