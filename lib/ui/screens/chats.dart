import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/constants/listview_items_detail.dart';
import 'package:dating_test/ui/widgets/chats/chats_section_1.dart';
import 'package:dating_test/ui/widgets/chats/chats_section_2.dart';
import 'package:dating_test/ui/widgets/chats/listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final image = ListViewItemsDetail.listViewItemsDetailMap['image']!;
    final date = ListViewItemsDetail.listViewItemsDetailMap['date']!;
    final text = ListViewItemsDetail.listViewItemsDetailMap['text']!;
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
          child: Column(
            children: [
              const ChatsSection1(),
              const ChatsSection2(),
              Expanded(
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: ListViewItemsDetail
                      .listViewItemsDetailMap['image']!.length,
                  itemBuilder: (context, index) {
                    return ListViewItem(
                      image: image[index],
                      date: date[index],
                      text: text[index],
                      index: index,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
