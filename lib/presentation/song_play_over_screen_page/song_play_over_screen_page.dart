import '../song_play_over_screen_page/widgets/listsongtitle_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SongPlayOverScreenPage extends StatefulWidget {
  @override
  _SongPlayOverScreenPageState createState() => _SongPlayOverScreenPageState();
}

class _SongPlayOverScreenPageState extends State<SongPlayOverScreenPage>
    with AutomaticKeepAliveClientMixin<SongPlayOverScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    top: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 26,
                          right: 22,
                        ),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return ListsongtitleItemWidget();
                          },
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 48,
                        ),
                        padding: getPadding(
                          all: 24,
                        ),
                        decoration: AppDecoration.outlineGray1001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage48x481,
                              height: getSize(
                                48,
                              ),
                              width: getSize(
                                48,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  12,
                                ),
                              ),
                              margin: getMargin(
                                bottom: 12,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 15,
                                bottom: 24,
                              ),
                              child: Text(
                                "Starboy - The Weeknd, Daft Pu...",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold16Gray900
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.2,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgTrash,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                              margin: getMargin(
                                left: 23,
                                top: 14,
                                bottom: 26,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                              margin: getMargin(
                                left: 16,
                                top: 14,
                                bottom: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
