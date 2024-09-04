import 'package:dating_test/features/constants/anonymous_discounts.dart';
import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/widgets/anonymous/anonymous_row_card.dart';
import 'package:dating_test/ui/widgets/anonymous/buy_button_anonymous.dart';
import 'package:dating_test/ui/widgets/anonymous/rich_text_anonymous.dart';
import 'package:dating_test/ui/widgets/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class Anonymous extends StatelessWidget {
  const Anonymous({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5.h),
              SvgPicture.asset(AppSvgs.bigAnonymous),
              SizedBox(
                height: 22.h,
              ),
              const RichTextAnonymous(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: const Text(
                  'Стань невидимкой в ленте и чатах, скрой\nобъявление и наслаждайся <Space> незамеченным',
                  style: TextStyle(
                      color: AppColors.textGreyAnonymous,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontFamily: AppFonts.ubuntu),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                      AnonymousDiscounts.anonymousDiscounts['count']!.length,
                      (index) {
                    return BouncingButton(
                      onPress: () {},
                      child: AnonymousRowCard(
                        count: AnonymousDiscounts
                            .anonymousDiscounts['count']![index],
                        price: AnonymousDiscounts
                            .anonymousDiscounts['price']![index],
                        discountText: AnonymousDiscounts
                            .anonymousDiscounts['discountText']![index],
                        discountCheck: AnonymousDiscounts
                            .anonymousDiscounts['discountCheck']![index],
                      ),
                    );
                  }),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                child: BouncingButton(
                  onPress: () {},
                  child: const BuyButtonAnonymous(),
                ),
              ),
              BouncingButton(
                onPress: () {},
                child: const Text('УСЛОВИЯ И ПОЛОЖЕНИЯ',
                    style: TextStyle(
                        fontFamily: AppFonts.ubuntu,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.textWhite)),
              )
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: BouncingButton(
              onPress: () {
                Navigator.pop(context);
              },
              child: const SizedBox(
                width: 28,
                height: 28,
                child: Icon(
                  Icons.close_rounded,
                  color: AppColors.textGrey,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
