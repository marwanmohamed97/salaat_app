import 'dart:ui';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/features/all/presentation/views/all.dart';
import 'package:salaat/features/home/presentation/views/widgets/prayer_time.dart';
import 'package:salaat/features/qibla/presentation/views/qibla.dart';
import 'package:salaat/features/quran/presentation/views/quran.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final widgetsOptions = [
    PrayerTime(),
    Qibla(),
    Quran(),
    All(),
  ];

  final listOfIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.kaaba,
    FontAwesomeIcons.bookQuran,
    FontAwesomeIcons.ellipsis,
  ];

  int _currentIndex = 0;

  final listOfText = [
    'الرئسية',
    'القبلة',
    'القرأن',
    'الكل',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        bottomNavigationBar: CustomNavigationBar(
            strokeColor: Colors.white.withOpacity(0),
            selectedColor: Colors.white,
            unSelectedColor: Colors.white54,
            backgroundColor: kPrimaryColor,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              CustomNavigationBarItem(
                icon: Icon(
                  listOfIcons[0],
                ),
                title: const Text(
                  'الرئسية',
                ),
              ),
              CustomNavigationBarItem(
                icon: Icon(
                  listOfIcons[1],
                ),
                title: const Text(
                  'القبلة',
                ),
              ),
              CustomNavigationBarItem(
                icon: Icon(
                  listOfIcons[2],
                ),
                title: const Text(
                  'القرأن',
                ),
              ),
              CustomNavigationBarItem(
                icon: Icon(
                  listOfIcons[3],
                ),
                title: const Text(
                  'الكل',
                ),
              ),
            ]),
        body: widgetsOptions.elementAt(_currentIndex),
      ),
    );
  }
}
