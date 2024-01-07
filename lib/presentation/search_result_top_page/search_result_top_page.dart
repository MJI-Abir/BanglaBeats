import '../search_result_top_page/widgets/listsongvalue_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultTopPage extends StatefulWidget {
  @override
  _SearchResultTopPageState createState() => _SearchResultTopPageState();
}

class _SearchResultTopPageState extends State<SearchResultTopPage>
    with AutomaticKeepAliveClientMixin<SearchResultTopPage> {
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
                  top: 24,
                  right: 24,
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
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return ListsongvalueItemWidget();
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
