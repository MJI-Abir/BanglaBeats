import 'package:banglabeats/core/app_export.dart';import 'package:banglabeats/presentation/artists_page/artists_page.dart';import 'package:banglabeats/presentation/podcasters_page/podcasters_page.dart';import 'package:banglabeats/widgets/app_bar/appbar_image.dart';import 'package:banglabeats/widgets/app_bar/appbar_title.dart';import 'package:banglabeats/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class ArtistsTabContainerScreen extends StatefulWidget {@override _ArtistsTabContainerScreenState createState() =>  _ArtistsTabContainerScreenState();
onTapArrowleft30(BuildContext context) { Navigator.pop(context); } 
 }

// ignore_for_file: must_be_immutable
class _ArtistsTabContainerScreenState extends State<ArtistsTabContainerScreen> with  TickerProviderStateMixin {late TabController group44Controller;

@override void initState() { super.initState(); group44Controller = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(39), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, bottom: 1), onTap: () {onTapArrowleft30(context);}), title: AppbarTitle(text: "Artists", margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 24, right: 1)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock28x28, margin: getMargin(left: 20, right: 25))]), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(top: 36), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(39), width: double.maxFinite, child: TabBar(controller: group44Controller, labelColor: ColorConstant.redA70002, labelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: ColorConstant.gray500, unselectedLabelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: ColorConstant.redA70002, tabs: [Tab(child: Text("Singers", overflow: TextOverflow.ellipsis)), Tab(child: Text("Podcasters", overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(831), child: TabBarView(controller: group44Controller, children: [ArtistsPage(), PodcastersPage()]))])))))); } 
onTapArrowleft30(BuildContext context) { Navigator.pop(context); } 
 }
