import 'package:banglabeats/core/app_export.dart';
import 'package:banglabeats/widgets/custom_button.dart';
import 'package:banglabeats/widgets/custom_checkbox.dart';
import 'package:banglabeats/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 11,
            right: 24,
            bottom: 11,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgArrowleft,
                height: getSize(28),
                width: getSize(28),
                alignment: Alignment.centerLeft,
                onTap: () {
                  onTapImgArrowleft(context);
                },
              ),
              CustomImageView(
                svgPath: ImageConstant.imgVectorRedA700,
                height: getSize(102),
                width: getSize(102),
                margin: getMargin(top: 28),
              ),
              Padding(
                padding: getPadding(top: 69),
                child: Text(
                  "Login to your account",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold32,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: emailController,
                hintText: "Email",
                margin: getMargin(top: 27),
                padding: TextFormFieldPadding.PaddingT21,
                fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500,
                textInputType: TextInputType.emailAddress,
                prefix: Container(
                  margin: getMargin(
                    left: 20,
                    top: 20,
                    right: 12,
                    bottom: 20,
                  ),
                  child: CustomImageView(svgPath: ImageConstant.imgCheckmark),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(60),
                ),
              ),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: passwordController,
                  hintText: "Password",
                  margin: getMargin(top: 24),
                  padding: TextFormFieldPadding.PaddingT21_1,
                  fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 20,
                      top: 20,
                      right: 12,
                      bottom: 20,
                    ),
                    child: CustomImageView(svgPath: ImageConstant.imgLock),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(60),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgDashboard,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(60),
                  ),
                  isObscureText: true),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomCheckbox(
                  alignment: Alignment.centerLeft,
                  text: "Remember me",
                  iconSize: getHorizontalSize(24),
                  value: isCheckbox,
                  margin: getMargin(top: 24),
                  fontStyle: CheckboxFontStyle.UrbanistSemiBold14Gray900,
                  onChange: (value) {
                    isCheckbox = value;
                  },
                ),
              ),
              CustomButton(
                height: getVerticalSize(58),
                text: "Sign in",
                margin: getMargin(top: 24),
                padding: ButtonPadding.PaddingT18,
                onTap: () {
                  onTapSignin(context);
                },
              ),
              GestureDetector(
                onTap: () {
                  onTapTxtForgotthepassword(context);
                },
                child: Padding(
                  padding: getPadding(top: 27),
                  child: Text(
                    "Forgot the password?",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16.copyWith(
                      letterSpacing: getHorizontalSize(0.2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(left: 10, top: 41, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(top: 11, bottom: 9),
                      child: SizedBox(
                        width: getHorizontalSize(96),
                        child: Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.blueGray100,
                        ),
                      ),
                    ),
                    Text(
                      "or continue with",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold18.copyWith(
                        letterSpacing: getHorizontalSize(0.2),
                      ),
                    ),
                    Padding(
                      padding: getPadding(top: 11, bottom: 9),
                      child: SizedBox(
                        width: getHorizontalSize(96),
                        child: Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.blueGray100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(left: 38, top: 31, right: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.blueGray100,
                          width: getHorizontalSize(1),
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Container(
                        height: getVerticalSize(60),
                        width: getHorizontalSize(88),
                        padding: getPadding(
                          left: 32,
                          top: 18,
                          right: 32,
                          bottom: 18,
                        ),
                        decoration: AppDecoration.outlineBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAutolayouthorizontal,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(left: 20),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.blueGray100,
                          width: getHorizontalSize(1),
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Container(
                        height: getVerticalSize(60),
                        width: getHorizontalSize(87),
                        padding: getPadding(
                            left: 31, top: 18, right: 31, bottom: 18),
                        decoration: AppDecoration.outlineBluegray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgGoogle,
                              height: getVerticalSize(24),
                              width: getHorizontalSize(23),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(left: 20),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ColorConstant.blueGray100,
                              width: getHorizontalSize(1)),
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Container(
                        height: getVerticalSize(60),
                        width: getHorizontalSize(88),
                        padding: getPadding(
                          left: 32,
                          top: 18,
                          right: 32,
                          bottom: 18,
                        ),
                        decoration: AppDecoration.outlineBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgFire,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: 33, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(bottom: 1),
                      child: Text(
                        "Don’t have an account?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRegular14.copyWith(
                          letterSpacing: getHorizontalSize(0.2),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapTxtSignup(context);
                      },
                      child: Padding(
                        padding: getPadding(left: 8, top: 1),
                        child: Text(
                          "Sign up",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtUrbanistSemiBold14RedA70002.copyWith(
                            letterSpacing: getHorizontalSize(0.2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapTxtForgotthepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
