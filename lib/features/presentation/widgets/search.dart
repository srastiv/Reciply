import 'package:flutter/material.dart';
import 'package:reciply/features/presentation/constants/colors.dart';

TextField searchBar() {
    return TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide.none,
                ),
                enabledBorder:  const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: KLightGrey)),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                filled: true,
                fillColor: kWhite,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: kBlack,
                ),
                labelText: "Search",
              ),
            );
  }