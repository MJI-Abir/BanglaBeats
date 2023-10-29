import 'package:banglabeats/core/app_export.dart';import 'package:banglabeats/widgets/app_bar/appbar_image.dart';import 'package:banglabeats/widgets/app_bar/appbar_title.dart';import 'package:banglabeats/widgets/app_bar/custom_app_bar.dart';import 'package:banglabeats/widgets/custom_button.dart';import 'package:banglabeats/widgets/custom_drop_down.dart';import 'package:banglabeats/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {TextEditingController statusFillTypeDefaultController = TextEditingController();

TextEditingController statusFillTypeDefaultOneController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController statusFillTypePhoneController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft36(context);}), title: AppbarTitle(text: "Edit Profile", margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 31, right: 24, bottom: 31), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomTextFormField(focusNode: FocusNode(), controller: statusFillTypeDefaultController, hintText: "Andrew Ainsley"), CustomTextFormField(focusNode: FocusNode(), controller: statusFillTypeDefaultOneController, hintText: "Andrew", margin: getMargin(top: 24)), Container(margin: getMargin(top: 24), padding: getPadding(left: 20, top: 18, right: 20, bottom: 18), decoration: AppDecoration.fillGray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1, bottom: 1), child: Text("27/12/1995", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgCalendar20x20, height: getSize(20), width: getSize(20))])), CustomTextFormField(focusNode: FocusNode(), controller: emailController, hintText: "user@domain.com", margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT18_1, textInputType: TextInputType.emailAddress, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgArrowdown)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), CustomTextFormField(focusNode: FocusNode(), controller: statusFillTypePhoneController, hintText: "+1 123 456 789 000", margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT21, textInputAction: TextInputAction.done, prefix: Container(margin: getMargin(left: 20, top: 19, right: 30, bottom: 19), child: CustomImageView(svgPath: ImageConstant.imgMaskgroup)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), CustomDropDown(focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 18), child: CustomImageView(svgPath: ImageConstant.imgIconBottom)), hintText: "Male", margin: getMargin(top: 24, bottom: 5), padding: DropDownPadding.PaddingT19, items: dropdownItemList, onChanged: (value) {})])), bottomNavigationBar: CustomButton(height: getVerticalSize(58), text: "Update", margin: getMargin(left: 24, right: 24, bottom: 48), variant: ButtonVariant.FillGray80002, padding: ButtonPadding.PaddingAll19))); } 
onTapArrowleft36(BuildContext context) { Navigator.pop(context); } 
 }
