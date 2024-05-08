import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/core/ulits/styles.dart';
import 'package:salaat/core/widgets/salaat_time.dart';

class PrayerTime extends StatelessWidget {
  const PrayerTime({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm00ODYtYmctMDE3LXhfMS5qcGc.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: ClipRRect(
                    // make sure we apply clip it properly
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.1),
                        // child: const Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'الزنتان',
                                      style: Styles.textStyle18,
                                    ),
                                    Icon(Icons.place_outlined),
                                  ],
                                ),
                                Text(
                                  '1445/10/01',
                                  style: Styles.textStyle18,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'المغرب',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'المتبقي',
                                  style: TextStyle(
                                    fontSize: 32,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '00:15',
                                  style: TextStyle(
                                    fontSize: 32,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: kPrimaryColor,
                              ),
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      getHTTP();
                                    },
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.compass,
                                          color: Colors.white,
                                          size: 60,
                                        ),
                                        Text(
                                          'القبلة',
                                          style: Styles.textStyle18,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.bookQuran,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                      Text(
                                        'القرأن',
                                        style: Styles.textStyle18,
                                      )
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.message,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                      Text(
                                        'حديث',
                                        style: Styles.textStyle18,
                                      )
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.handsPraying,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                      Text(
                                        'دعاء',
                                        style: Styles.textStyle18,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SalaatTime(
                      sallat: 'الفجر',
                      time: '06:10',
                    ),
                    SalaatTime(
                      sallat: 'الشروق',
                      time: '07:13',
                    ),
                    SalaatTime(
                      sallat: 'الضهر',
                      time: '01:10',
                    ),
                    SalaatTime(
                      sallat: 'العصر',
                      time: '04:48',
                    ),
                    SalaatTime(
                      sallat: 'المغرب',
                      time: '07:50',
                    ),
                    SalaatTime(
                      sallat: 'العشاء',
                      time: '09:11',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void getHTTP() async {
  try {
    var respons = await Dio().get(
        'http://api.aladhan.com/v1/timings/22-04-2024?latitude=32.895276&longitude=13.181551&method=1');
    print(respons);
  } catch (e) {
    print(e);
  }
}
