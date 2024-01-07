import '../search_result_playlist_page/widgets/gridlanguage_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultPlaylistPage extends StatefulWidget {
  @override
  _SearchResultPlaylistPageState createState() =>
      _SearchResultPlaylistPageState();
}

class _SearchResultPlaylistPageState extends State<SearchResultPlaylistPage>
    with AutomaticKeepAliveClientMixin<SearchResultPlaylistPage> {
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
              Container(
                decoration: AppDecoration.fillWhiteA700,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      249,
                    ),
                    crossAxisCount: 2,
                    mainAxisSpacing: getHorizontalSize(
                      12,
                    ),
                    crossAxisSpacing: getHorizontalSize(
                      12,
                    ),
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GridlanguageItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
