import '../new_releases_screen/widgets/newreleases_item_widget.dart';import 'package:banglabeats/core/app_export.dart';import 'package:banglabeats/widgets/app_bar/appbar_image.dart';import 'package:banglabeats/widgets/app_bar/appbar_title.dart';import 'package:banglabeats/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class NewReleasesScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(38), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 1), onTap: () {onTapArrowleft12(context);}), title: AppbarTitle(text: "New Releases", margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 24, top: 1, right: 24))]), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 40, right: 24, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("The Best New Releases", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: getPadding(right: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage184x18414, height: getSize(184), width: getSize(184), radius: BorderRadius.circular(getHorizontalSize(28))), Padding(padding: getPadding(top: 12), child: Text("Positions", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Padding(padding: getPadding(top: 5), child: Text("Ariana Grande", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray700.copyWith(letterSpacing: getHorizontalSize(0.2))))]))), Expanded(child: Padding(padding: getPadding(left: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage184x18415, height: getSize(184), width: getSize(184), radius: BorderRadius.circular(getHorizontalSize(28))), Padding(padding: getPadding(top: 12), child: Text("Motomami", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Padding(padding: getPadding(top: 5), child: Text("The Weeknd", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray700.copyWith(letterSpacing: getHorizontalSize(0.2))))])))])), Padding(padding: getPadding(top: 36), child: Text("New Albums & Single", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24)), Padding(padding: getPadding(top: 13), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(245), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(12), crossAxisSpacing: getHorizontalSize(12)), physics: NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return NewreleasesItemWidget();}))])))))); } 
onTapArrowleft12(BuildContext context) { Navigator.pop(context); } 
 }
