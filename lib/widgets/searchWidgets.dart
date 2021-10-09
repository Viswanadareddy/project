import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/values/values.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1, right: 1, top: 15, bottom: 5),
        child: Container(
            width: 380,
            //height: 100,
            child: TextField(
              selectionWidthStyle: BoxWidthStyle.tight,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.RADIUS_16),
                    borderSide: BorderSide(
                        color: AppColorsConst.whiteShade_50,
                        width: 0,
                        style: BorderStyle.none),
                  ),
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  fillColor: Colors.black45,
                  hintText: StringConstant.SEARCH,
                  hintStyle: TextStyle(color: Colors.white)),
              style: TextStyle(color: Colors.white),
            )));
  }
}
