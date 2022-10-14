import 'package:flutter/material.dart';
import 'package:reciply/features/presentation/constants/colors.dart';
import 'package:reciply/features/presentation/screens/homepage.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 54,
        width: 327,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homescreen(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: kDarkestGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(text),
        ),
      );
}


 MaterialButton buttonmaterial(Icon icon) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
       
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
        ],
      ),
    );
  }