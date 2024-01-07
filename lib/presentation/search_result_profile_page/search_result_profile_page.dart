import '../search_result_profile_page/widgets/listname2_item_widget.dart';import 'package:banglabeats/core/app_export.dart';import 'package:flutter/material.dart';class SearchResultProfilePage extends StatefulWidget {@override _SearchResultProfilePageState createState() =>  _SearchResultProfilePageState();
onTapRowname(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileDetailsScreen); } 
 }
class _SearchResultProfilePageState extends State<SearchResultProfilePage> with  AutomaticKeepAliveClientMixin<SearchResultProfilePage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) {
  super.build(context); return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 24, top: 24, right: 24), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: 6, itemBuilder: (context, index) {return Listname2ItemWidget(onTapRowname: () {onTapRowname(context);});}))])))); } 
onTapRowname(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileDetailsScreen); } 
 }
