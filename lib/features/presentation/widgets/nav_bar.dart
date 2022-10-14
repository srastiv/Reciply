
import 'package:flutter/material.dart';
import 'package:reciply/features/presentation/constants/colors.dart';
import 'package:reciply/features/presentation/widgets/buttonWidget.dart';

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttonmaterial(
              const Icon(Icons.home),
            ),
            buttonmaterial(
              const Icon(
                Icons.search,
                color: kCommonGreen,
              ),
            ),
            buttonmaterial(
              const Icon(Icons.settings),
            ),
            buttonmaterial(
              const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}