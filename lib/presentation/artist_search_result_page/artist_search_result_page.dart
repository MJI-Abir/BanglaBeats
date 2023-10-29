import '../artist_search_result_page/widgets/listellipseone_item_widget.dart';import 'package:banglabeats/core/app_export.dart';import 'package:flutter/material.dart';class ArtistSearchResultPage extends StatefulWidget {@override _ArtistSearchResultPageState createState() =>  _ArtistSearchResultPageState();
onTapRowellipseone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.artistDetailsScreen); } 
 }
class _ArtistSearchResultPageState extends State<ArtistSearchResultPage> with  AutomaticKeepAliveClientMixin<ArtistSearchResultPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 24, top: 44, right: 24), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(16));}, itemCount: 5, itemBuilder: (context, index) {return ListellipseoneItemWidget(onTapRowellipseone: () {onTapRowellipseone(context);});}))])))); } 
onTapRowellipseone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.artistDetailsScreen); } 
 }
