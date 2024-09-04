// ignore_for_file: deprecated_member_use

import 'package:dating_test/features/constants/app_colors.dart';
import 'package:dating_test/features/resources/resources.dart';
import 'package:dating_test/ui/screens/chats.dart';
import 'package:dating_test/ui/screens/fyp.dart';
import 'package:dating_test/ui/screens/likes.dart';
import 'package:dating_test/ui/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 1;
  final PageController _pageController = PageController(
    initialPage: 1,
  );
  final List<Widget> _screens = [
    const FYP(),
    const Chats(),
    const Likes(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashFactory: NoSplash.splashFactory,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.darkBottomNavBar,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            _pageController.animateToPage(value,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut);
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppSvgs.fyp,
                color: AppColors.yellow,
              ),
              label: 'null',
              icon: SvgPicture.asset(
                AppSvgs.fyp,
                color: AppColors.purple,
              ),
            ),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  AppSvgs.chats,
                  color: AppColors.yellow,
                ),
                icon: SvgPicture.asset(AppSvgs.chats, color: AppColors.purple),
                label: 'null'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  AppSvgs.likes,
                  color: AppColors.yellow,
                ),
                icon: SvgPicture.asset(AppSvgs.likes, color: AppColors.purple),
                label: 'null'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  AppSvgs.settings,
                  color: AppColors.yellow,
                ),
                icon: SvgPicture.asset(
                  AppSvgs.settings,
                  color: AppColors.purple,
                ),
                label: 'null'),
          ],
        ),
      ),
    );
  }
}
