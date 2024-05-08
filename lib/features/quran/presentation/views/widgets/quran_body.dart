import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/core/ulits/styles.dart';

class QuranBody extends StatelessWidget {
  const QuranBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'القرأن',
                style: Styles.textStyle30,
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
