import '../trending_now_screen/widgets/trendingnow_item_widget.dart';import 'package:banglabeats/core/app_export.dart';import 'package:banglabeats/widgets/app_bar/appbar_image.dart';import 'package:banglabeats/widgets/app_bar/appbar_title.dart';import 'package:banglabeats/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class TrendingNowScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft8(context);}), title: AppbarTitle(text: "Trending Now", margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 24, top: 10, right: 24, bottom: 13))]), body: Container(width: double.maxFinite, child: Container(width: getHorizontalSize(380), margin: getMargin(left: 24, top: 28, right: 24, bottom: 5), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(245), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(12), crossAxisSpacing: getHorizontalSize(12)), physics: NeverScrollableScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return TrendingnowItemWidget();})]))))); } 
onTapArrowleft8(BuildContext context) { Navigator.pop(context); } 
 }
