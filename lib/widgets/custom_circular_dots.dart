import 'package:banglabeats/core/utils/color_constant.dart';
import 'package:banglabeats/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCircularDots extends StatelessWidget {
  const CustomCircularDots({
    Key? key,
    required this.offset,
    required this.numberOfDots,
    required this.size,
    this.spacing,
    this.dotColor,
    this.activeDotColor,
    required this.dotHeight,
    required this.dotWidth,
  }) : super(key: key);

  final double offset;
  final int numberOfDots;
  final Size size;
  final double? spacing;
  final Color? dotColor;
  final Color? activeDotColor;
  final double dotHeight;
  final double dotWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(8),
      // margin: getMargin(top: 39),
      child: Center(
        child: SmoothIndicator(
          offset: offset,
          count: numberOfDots,
          size: size,
          effect: ScrollingDotsEffect(
            spacing: spacing != null ? spacing! : 6,
            activeDotColor: activeDotColor != null
                ? activeDotColor!
                : ColorConstant.redA70001,
            dotColor: dotColor != null ? dotColor! : ColorConstant.gray300,
            dotHeight: getVerticalSize(dotHeight),
            dotWidth: getHorizontalSize(dotWidth),
          ),
        ),
      ),
    );
  }
}
