import 'package:bus_trcker/core/app_export.dart';
import 'package:bus_trcker/widgets/app_bar/appbar_leading_image.dart';
import 'package:bus_trcker/widgets/app_bar/custom_app_bar.dart';
import 'package:bus_trcker/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxOneScreen extends StatelessWidget {
  const Iphone11ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 35.v),
                child: Column(children: [
                  Spacer(flex: 34),
                  CustomImageView(
                      imagePath: ImageConstant.imgIconLocation,
                      height: 119.v,
                      width: 123.h),
                  SizedBox(height: 36.v),
                  SizedBox(
                      width: 168.h,
                      child: Text("Enable your\nLocation",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineLargeBold)),
                  SizedBox(height: 28.v),
                  SizedBox(
                      height: 62.v,
                      width: 260.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 60.v,
                                width: 260.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onError,
                                    borderRadius:
                                        BorderRadius.circular(10.h)))),
                        CustomElevatedButton(
                            width: 260.h,
                            text: "Enable",
                            buttonStyle: CustomButtonStyles.fillOnError,
                            buttonTextStyle:
                                CustomTextStyles.headlineSmallMedium,
                            onPressed: () {
                              onTapEnable(context);
                            },
                            alignment: Alignment.center)
                      ])),
                  Spacer(flex: 65),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 204.h,
                          margin: EdgeInsets.only(left: 18.h),
                          child: Text(
                              "🔒 Magicaly secured text to make all security concerns go away.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(height: 1.33))))
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

  /// Navigates to the iphone11ProMaxThreeScreen when the action is triggered.
  onTapEnable(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxThreeScreen);
  }
}
