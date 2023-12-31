import '../search_result_podcast_page/widgets/listcountry_item_widget.dart';
import '../search_result_podcast_page/widgets/listpodcasttitle1_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

class SearchResultPodcastPage extends StatefulWidget {
  @override
  _SearchResultPodcastPageState createState() =>
      _SearchResultPodcastPageState();
  onTapColumncountry(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.podcastDetailsScreen);
  }
}

class _SearchResultPodcastPageState extends State<SearchResultPodcastPage>
    with AutomaticKeepAliveClientMixin<SearchResultPodcastPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(right: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Podcasts & Shows",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold24,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 7,
                                ),
                                child: Text(
                                  "See All",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16RedA70002
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(0.2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(209),
                            child: ListView.separated(
                              padding: getPadding(top: 16),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(12),
                                );
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListcountryItemWidget(
                                  onTapColumncountry: () {
                                    onTapColumncountry(context);
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(top: 1),
                                child: Text(
                                  "Episodes",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(bottom: 10),
                                child: Text(
                                  "See All",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16RedA70002
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(0.2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 21, right: 24),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(24));
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Listpodcasttitle1ItemWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapColumncountry(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.podcastDetailsScreen);
  }
}
