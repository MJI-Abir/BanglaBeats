import '../history_music_page/widgets/historymusic_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryMusicPage extends StatefulWidget {
  @override
  _HistoryMusicPageState createState() => _HistoryMusicPageState();
}

class _HistoryMusicPageState extends State<HistoryMusicPage>
    with AutomaticKeepAliveClientMixin<HistoryMusicPage> {
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
                        24,
                      ),
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return HistorymusicItemWidget();
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
