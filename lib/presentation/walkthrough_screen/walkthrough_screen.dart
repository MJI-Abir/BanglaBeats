import 'package:banglabeats/controllers/walkthrough_screen_controller.dart';
import 'package:banglabeats/core/app_export.dart';
import 'package:banglabeats/widgets/custom_button.dart';
import 'package:banglabeats/widgets/custom_circular_dots.dart';
import 'package:banglabeats/widgets/custom_text_banner.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughScreen extends StatelessWidget {
  final controller = Get.put(WalkthroughScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.gray50,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgWalkthrough),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                Container(
                  width: double.maxFinite,
                  child: Container(
                    padding:
                        getPadding(left: 24, top: 46, right: 24, bottom: 46),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL60),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          items: [
                            CustomTextBanner(
                              normalText:
                                  "Listen to the best music everyday with ",
                              focusedText: "BanglaBeats",
                            ),
                            CustomTextBanner(
                              normalText: "Personalize your music playlist!",
                            ),
                            CustomTextBanner(
                              normalText: "Thousands of songs. Free on ",
                              focusedText: "BanglaBeats",
                            ),
                          ],
                          options: CarouselOptions(
                            viewportFraction: 1,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, _) =>
                                controller.updatePageIndicator(index),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Obx(
                          () => CustomCircularDots(
                            offset: controller.carouselCurrentIndex.value
                                .toDouble(),
                            numberOfDots: 3,
                            size: Size.zero,
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                        ),
                        Obx(
                          () => CustomButton(
                            height: getVerticalSize(58),
                            text: "Get Started",
                            margin: getMargin(top: 40, bottom: 1),
                            padding: ButtonPadding.PaddingT18,
                            variant: controller.carouselCurrentIndex.value == 2
                                ? ButtonVariant.FillRedA70001
                                : null,
                            onTap: controller.carouselCurrentIndex.value == 2
                                ? () {
                                    onTapGetStarted(context);
                                  }
                                : () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.letsYouInScreen);
  }
}





//carouselWithIndicator
// class CarouselWithIndicatorDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _CarouselWithIndicatorState();
//   }
// }

// class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
//   int _current = 0;
//   final CarouselController _controller = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Carousel with indicator controller demo')),
//       body: Column(children: [
//         Expanded(
//           child: CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                             ? Colors.white
//                             : Colors.black)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//               ),
//             );
//           }).toList(),
//         ),
//       ]),
//     );
//   }
// }
