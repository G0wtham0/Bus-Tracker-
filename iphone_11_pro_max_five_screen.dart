import 'package:bus_trcker/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxFiveScreen extends StatelessWidget {
  const Iphone11ProMaxFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 118.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 224.adaptSize,
                width: 224.adaptSize,
              ),
              SizedBox(height: 81.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "BUS TRCKER",
                  style: theme.textTheme.displayMedium,
                ),
              ),
              Spacer(),
              SizedBox(height: 25.v),
              Text(
                "Loading....",
                style: CustomTextStyles.bodyLargePrimaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
