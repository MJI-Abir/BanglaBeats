import '../history_podcast_page/widgets/listpodcasttitle3_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryPodcastPage extends StatefulWidget {
  @override
  _HistoryPodcastPageState createState() => _HistoryPodcastPageState();
}

class _HistoryPodcastPageState extends State<HistoryPodcastPage>
    with AutomaticKeepAliveClientMixin<HistoryPodcastPage> {
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
                  top: 30,
                  right: 24,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        23,
                      ),
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Listpodcasttitle3ItemWidget();
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
