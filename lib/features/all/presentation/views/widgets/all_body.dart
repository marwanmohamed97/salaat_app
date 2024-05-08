import 'package:flutter/material.dart';
import 'package:salaat/constants.dart';
import 'package:salaat/features/all/presentation/views/widgets/islam_widgets.dart';

class AllBody extends StatelessWidget {
  const AllBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: const <Widget>[
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
            IsalmWidgets(),
          ],
        ));
  }
}
