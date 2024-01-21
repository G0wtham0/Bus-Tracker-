import 'package:bus_trcker/core/app_export.dart';
import 'package:bus_trcker/widgets/app_bar/appbar_leading_image.dart';
import 'package:bus_trcker/widgets/app_bar/custom_app_bar.dart';
import 'package:bus_trcker/widgets/custom_elevated_button.dart';
import 'package:bus_trcker/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThreeScreen extends StatelessWidget {
  Iphone11ProMaxThreeScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: 169.adaptSize,
                          width: 169.adaptSize,
                          radius: BorderRadius.circular(84.h)),
                      SizedBox(height: 40.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 71.h),
                              child: Text("ERODE",
                                  style:
                                      CustomTextStyles.headlineLargeMedium))),
                      SizedBox(height: 28.v),
                      CustomElevatedButton(
                          width: 242.h,
                          text: "Bus info",
                          buttonStyle: CustomButtonStyles.fillOnError,
                          buttonTextStyle: theme.textTheme.headlineSmall!,
                          onPressed: () {
                            onTapBusInfo(context);
                          },
                          alignment: Alignment.centerRight),
                      SizedBox(height: 65.v),
                      Text("Are you inside the bus",
                          style: CustomTextStyles.bodyLarge_1),
                      SizedBox(height: 18.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("Yes",
                                    style: theme.textTheme.headlineLarge)),
                            CustomSwitch(
                                margin:
                                    EdgeInsets.only(left: 13.h, bottom: 1.v),
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  isSelectedSwitch = value;
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 18.h),
                                child: Text("No",
                                    style: theme.textTheme.headlineLarge))
                          ]),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 413.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(27.h, 20.v, 376.h, 20.v)));
  }

  /// Navigates to the iphone11ProMaxTwoScreen when the action is triggered.
  onTapBusInfo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxTwoScreen);
  }
}
