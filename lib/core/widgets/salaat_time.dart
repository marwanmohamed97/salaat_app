import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/core/ulits/styles.dart';

class SalaatTime extends StatelessWidget {
  const SalaatTime({Key? key, required this.sallat, required this.time})
      : super(key: key);
  final String sallat;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.4,
              child: Text(
                sallat,
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.2,
              child: Text(
                time,
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.2,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    color: Color.fromARGB(255, 248, 180, 71),
                    Icons.volume_up,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
