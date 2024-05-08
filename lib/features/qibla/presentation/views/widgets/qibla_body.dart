import 'package:flutter/material.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/core/ulits/styles.dart';

class QiblaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Center(
          child: Text(
            'القبلة',
            style: Styles.textStyle30,
          ),
        ),
        Image.network(
            'https://s.cafebazaar.ir/images/icons/com.muslimappsforyou.qiblafinder-3fb7451a-5bd4-4821-9163-b15c7ba74871_512x512.png?x-img=v1/resize,h_256,w_256,lossless_false/optimize')
      ],
    ));
  }
}
