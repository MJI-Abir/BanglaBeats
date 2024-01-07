import '../search_result_album_page/widgets/gridsweetener_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

class SearchResultAlbumPage extends StatefulWidget {
  @override
  _SearchResultAlbumPageState createState() => _SearchResultAlbumPageState();
  onTapColumnsweetener(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.albumDetailsScreen);
  }
}

class _SearchResultAlbumPageState extends State<SearchResultAlbumPage>
    with AutomaticKeepAliveClientMixin<SearchResultAlbumPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 21,
                  right: 24,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(267),
                    crossAxisCount: 2,
                    mainAxisSpacing: getHorizontalSize(12),
                    crossAxisSpacing: getHorizontalSize(12),
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GridsweetenerItemWidget(
                      onTapColumnsweetener: () {
                        onTapColumnsweetener(context);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapColumnsweetener(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.albumDetailsScreen);
  }
}
