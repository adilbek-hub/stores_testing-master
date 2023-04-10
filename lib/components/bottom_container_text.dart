import 'package:flutter/material.dart';
import 'package:stores/constants/app_text_style.dart';

class BottomContainerText extends StatelessWidget {
  const BottomContainerText(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.marketPlaceStyle,
    );
  }
}
