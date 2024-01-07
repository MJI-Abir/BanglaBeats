import '../songs_notifications_page/widgets/listday_item_widget.dart';
import '../songs_notifications_page/widgets/listyesterday_item_widget.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SongsNotificationsPage extends StatefulWidget {
  @override
  _SongsNotificationsPageState createState() => _SongsNotificationsPageState();
}

class _SongsNotificationsPageState extends State<SongsNotificationsPage>
    with AutomaticKeepAliveClientMixin<SongsNotificationsPage> {
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
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 25,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "New Music Release Today",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular18,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
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
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListdayItemWidget();
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "Yesterday",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanRegular18,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
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
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListyesterdayItemWidget();
                          },
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
