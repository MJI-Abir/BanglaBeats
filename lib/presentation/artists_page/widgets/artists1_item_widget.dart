import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artists1ItemWidget extends StatelessWidget {
  Artists1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse180x80,
          height: getSize(
            80,
          ),
          width: getSize(
            80,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              40,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 15,
            bottom: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold18,
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgOverflowmenu,
          height: getSize(
            20,
          ),
          width: getSize(
            20,
          ),
          margin: getMargin(
            top: 30,
            bottom: 30,
          ),
        ),
      ],
    );
  }
}
