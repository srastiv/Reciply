// import 'package:flutter/material.dart';

 import 'package:flutter/material.dart';
import 'package:reciply/features/presentation/constants/texts.dart';

Row popularEditorsRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kPopularReceipeEditorTextStyle,
        ),
        const Text(
          "View All",
          style: kViewAllTextStyle,
        ),
      ],
    );
  }