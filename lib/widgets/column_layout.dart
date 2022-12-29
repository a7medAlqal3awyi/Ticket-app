import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String firstText;
  final String secondtText;

  const AppColumnLayout({
    Key? key, required this.firstText, required this.secondtText, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
     crossAxisAlignment: alignment,
      children: [
        Text(firstText,
      style: isColor ==null? Styles.heedLineStyle3.copyWith(color: Colors.white):Styles.heedLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(secondtText,style:   isColor ==null? Styles.heedLineStyle4.copyWith(color: Colors.white):Styles.heedLineStyle4,)
      ],
    );
  }
}
