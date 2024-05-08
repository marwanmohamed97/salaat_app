import 'package:flutter/material.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/core/ulits/styles.dart';

class IsalmWidgets extends StatelessWidget {
  const IsalmWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(
              16,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 6,
                offset: Offset(0, 5),
              )
            ],
            border:
                Border.all(color: Colors.black.withOpacity(0.32), width: 2)),
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.all(1),
        height: 10,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/3165/3165281.png',
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width / 7,
              ),
              const Text(
                'أقرب مسجد',
                style: Styles.textStyle18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
