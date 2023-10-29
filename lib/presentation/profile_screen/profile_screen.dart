import 'package:banglabeats/core/app_export.dart';import 'package:banglabeats/widgets/app_bar/appbar_image.dart';import 'package:banglabeats/widgets/app_bar/appbar_title.dart';import 'package:banglabeats/widgets/app_bar/custom_app_bar.dart';import 'package:banglabeats/widgets/custom_button.dart';import 'package:banglabeats/widgets/custom_phone_number.dart';import 'package:banglabeats/widgets/custom_text_form_field.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

TextEditingController statusDefaultTwoController = TextEditingController();

Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

TextEditingController phoneNumberController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 9), onTap: () {onTapArrowleft(context);}), title: AppbarTitle(text: "Fill Your Profile", margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 48, right: 23, bottom: 48), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(140), width: getSize(140), margin: getMargin(top: 3), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse140x140, height: getSize(140), width: getSize(140), radius: BorderRadius.circular(getHorizontalSize(70)), alignment: Alignment.center), CustomImageView(svgPath: ImageConstant.imgEdit, height: getSize(35), width: getSize(35), alignment: Alignment.bottomRight)])), CustomTextFormField(focusNode: FocusNode(), controller: statusDefaultController, hintText: "Full Name", margin: getMargin(top: 24), fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500), CustomTextFormField(focusNode: FocusNode(), controller: statusDefaultOneController, hintText: "Nickname", margin: getMargin(top: 24), fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500), Container(margin: getMargin(left: 1, top: 24, right: 1), padding: getPadding(left: 20, top: 18, right: 20, bottom: 18), decoration: AppDecoration.fillGray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 1), child: Text("Date of Birth", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgCalendar, height: getSize(20), width: getSize(20))])), CustomTextFormField(focusNode: FocusNode(), controller: statusDefaultTwoController, hintText: "Email", margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT18_1, fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500, textInputType: TextInputType.emailAddress, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgArrowdown)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), Padding(padding: getPadding(top: 24), child: CustomPhoneNumber(country: selectedCountry, controller: phoneNumberController, onTap: (Country country) {selectedCountry = country;})), Spacer(), Padding(padding: getPadding(left: 2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomButton(height: getVerticalSize(58), text: "Skip", margin: getMargin(right: 6), variant: ButtonVariant.OutlineGray800, padding: ButtonPadding.PaddingT18, fontStyle: ButtonFontStyle.UrbanistRomanBold16Gray800_1, onTap: () {onTapSkip(context);})), Expanded(child: CustomButton(height: getVerticalSize(58), text: "Continue", margin: getMargin(left: 6), padding: ButtonPadding.PaddingT18, onTap: () {onTapContinue(context);}))]))])))); } 
onTapSkip(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createNewPinScreen); } 
onTapArrowleft(BuildContext context) { Navigator.pop(context); } 
 }
