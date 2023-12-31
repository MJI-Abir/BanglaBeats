import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistsItemWidget extends StatelessWidget {
  PlaylistsItemWidget({this.onTapRowlightbulb});

  VoidCallback? onTapRowlightbulb;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowlightbulb?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Container(
              height: getSize(
                80,
              ),
              width: getSize(
                80,
              ),
              padding: getPadding(
                all: 24,
              ),
              decoration: AppDecoration.gradientRed700RedA70002.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLightbulb32x32,
                    height: getSize(
                      32,
                    ),
                    width: getSize(
                      32,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 17,
              bottom: 16,
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
                    top: 9,
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
      ),
    );
  }
}
