import 'package:banglabeats/core/app_export.dart';
import 'package:banglabeats/widgets/app_bar/appbar_image.dart';
import 'package:banglabeats/widgets/app_bar/appbar_title.dart';
import 'package:banglabeats/widgets/app_bar/custom_app_bar.dart';
import 'package:banglabeats/widgets/custom_button.dart';
import 'package:banglabeats/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddNewCardScreen extends StatelessWidget {
  TextEditingController statusFillTypeDefaultController =
      TextEditingController();

  TextEditingController statusFillTypeDefaultOneController =
      TextEditingController();

  TextEditingController statusFillTypeDefaultTwoController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(48),
          leadingWidth: 52,
          leading: AppbarImage(
            height: getSize(28),
            width: getSize(28),
            svgPath: ImageConstant.imgArrowleft,
            margin: getMargin(left: 24, top: 10, bottom: 10),
            onTap: () {
              onTapArrowleft32(context);
            },
          ),
          title: AppbarTitle(
            text: "Add New Card",
            margin: getMargin(left: 16),
          ),
          actions: [
            AppbarImage(
              height: getSize(28),
              width: getSize(28),
              svgPath: ImageConstant.imgIconlylightscan,
              margin: getMargin(left: 24, top: 10, right: 24, bottom: 10),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 31,
            right: 24,
            bottom: 31,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(all: 30),
                  decoration: AppDecoration.gradientRed700RedA70002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(top: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mocard",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold16WhiteA700
                                  .copyWith(
                                letterSpacing: getHorizontalSize(0.2),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLightbulbWhiteA700,
                              height: getVerticalSize(18),
                              width: getHorizontalSize(60),
                              margin: getMargin(
                                bottom: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 35),
                        child: Text(
                          "•••• •••• •••• ••••",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold48WhiteA700,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 28,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Card Holder name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium10WhiteA700
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(top: 5),
                                  child: Text(
                                    "•••• ••••",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistSemiBold14WhiteA700
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(flex: 42),
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 1,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expiry date",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanMedium10WhiteA700
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 4),
                                    child: Text(
                                      "••••/••••",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold14WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(flex: 57),
                            CustomImageView(
                              svgPath: ImageConstant.imgUserWhiteA700,
                              height: getVerticalSize(36),
                              width: getHorizontalSize(58),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 24),
                child: Divider(
                  height: getVerticalSize(1),
                  thickness: getVerticalSize(1),
                  color: ColorConstant.blueGray100,
                ),
              ),
              Padding(
                padding: getPadding(top: 24),
                child: Text(
                  "Card Name",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18.copyWith(
                    letterSpacing: getHorizontalSize(0.2),
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: statusFillTypeDefaultController,
                hintText: "Andrew Ainsley",
                margin: getMargin(top: 13),
              ),
              Padding(
                padding: getPadding(top: 25),
                child: Text(
                  "Card Number",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18.copyWith(
                    letterSpacing: getHorizontalSize(0.2),
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: statusFillTypeDefaultOneController,
                hintText: "2672 4738 7837 7285",
                margin: getMargin(top: 13),
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          top: 2,
                          right: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Expiry Date",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                            Container(
                              margin: getMargin(top: 11),
                              padding: getPadding(
                                left: 20,
                                top: 18,
                                right: 20,
                                bottom: 18,
                              ),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "10/07/2026",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold14Gray900
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(0.2),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCalendar20x20,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(left: 47),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "CVV",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                            CustomTextFormField(
                                width: getHorizontalSize(180),
                                focusNode: FocusNode(),
                                controller: statusFillTypeDefaultTwoController,
                                hintText: "699",
                                margin: getMargin(top: 13),
                                textInputAction: TextInputAction.done)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(58),
          text: "Add",
          margin: getMargin(left: 24, right: 24, bottom: 48),
          variant: ButtonVariant.FillGray80002,
          padding: ButtonPadding.PaddingAll19,
          onTap: () {
            onTapAdd(context);
          },
        ),
      ),
    );
  }

  onTapAdd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectPaymentMethodScreen);
  }

  onTapArrowleft32(BuildContext context) {
    Navigator.pop(context);
  }
}
