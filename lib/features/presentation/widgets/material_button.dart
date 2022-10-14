// import 'package:flutter/material.dart';

 import 'package:flutter/material.dart';
import 'package:reciply/features/presentation/constants/colors.dart';

Row popularEditorsRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Text(
          "View All",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: kCommonGreen),
        ),
      ],
    );
  }