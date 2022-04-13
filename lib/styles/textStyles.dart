import 'package:flutter/material.dart';
import 'fontSizes.dart';

TextStyle kDefaultTitleTextStyle (BuildContext context, Color color) =>
    TextStyle(
        color: color,
        fontSize: fontSize20(context),
        fontFamily: robotoFont,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal
    );
TextStyle kDefaultSubTitleTextStyle (BuildContext context, Color color) =>
    TextStyle(
        color: color,
        fontSize: fontSize12(context),
        fontFamily: robotoFont,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal
    );