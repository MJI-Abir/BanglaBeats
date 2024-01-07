import 'package:banglabeats/core/utils/color_constant.dart';
import 'package:banglabeats/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomTextBanner extends StatelessWidget {
  const CustomTextBanner({
    Key? key,
    required this.normalText,
    this.focusedText,
    this.normalTextColor,
    this.focusedTextColor,
    this.fontSize,
    this.fontFamily,
  }) : super(key: key);

  final String normalText;
  final String? focusedText;
  final Color? normalTextColor;
  final Color? focusedTextColor;
  final double? fontSize;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: getHorizontalSize(376),
        child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: normalText,
                  style: TextStyle(
                    color: normalTextColor != null
                        ? normalTextColor
                        : ColorConstant.gray900,
                    fontSize: fontSize != null
                        ? getFontSize(fontSize!)
                        : getFontSize(40),
                    fontFamily: fontFamily != null ? fontFamily : 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: focusedText,
                  style: TextStyle(
                    color: focusedTextColor != null
                        ? focusedTextColor
                        : ColorConstant.redA700,
                    fontSize: fontSize != null
                        ? getFontSize(fontSize!)
                        : getFontSize(40),
                    fontFamily: fontFamily != null ? fontFamily : 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center),
      ),
    );
  }
}
