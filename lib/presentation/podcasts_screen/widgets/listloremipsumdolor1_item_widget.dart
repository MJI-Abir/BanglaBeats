import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listloremipsumdolor1ItemWidget extends StatelessWidget {
  Listloremipsumdolor1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 12,
            bottom: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage160x16010,
                height: getSize(
                  160,
                ),
                width: getSize(
                  160,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  150,
                ),
                margin: getMargin(
                  top: 9,
                ),
                child: Text(
                  "",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
