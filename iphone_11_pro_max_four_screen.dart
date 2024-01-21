import 'package:bus_trcker/core/app_export.dart';
import 'package:bus_trcker/widgets/app_bar/appbar_leading_image.dart';
import 'package:bus_trcker/widgets/app_bar/custom_app_bar.dart';
import 'package:bus_trcker/widgets/custom_elevated_button.dart';
import 'package:bus_trcker/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourScreen extends StatelessWidget {
  Iphone11ProMaxFourScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 44.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("Sign up",
                                          style:
                                              theme.textTheme.headlineMedium)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text("Name*",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 6.v),
                                  _buildNameEditText(context),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("Email*",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 8.v),
                                  _buildEmailEditText(context),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("Password*",
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 6.v),
                                  _buildPasswordEditText(context),
                                  SizedBox(height: 11.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                          "*Must be at least 8 Character ",
                                          style: CustomTextStyles
                                              .bodyMediumOnPrimaryContainer)),
                                  Spacer(flex: 53),
                                  _buildCreateAnAccountButton(context),
                                  SizedBox(height: 41.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtAlreadyhavean(context);
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "Already have an account? ",
                                                    style: CustomTextStyles
                                                        .bodyLargeff000000),
                                                TextSpan(
                                                    text: "Log in",
                                                    style: theme
                                                        .textTheme.titleMedium)
                                              ]),
                                              textAlign: TextAlign.left))),
                                  Spacer(flex: 46)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 413.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(27.h, 20.v, 376.h, 20.v)));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 4.h),
        child: CustomTextFormField(
            controller: nameEditTextController, hintText: "Enter your name"));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 4.h),
        child: CustomTextFormField(
            controller: emailEditTextController,
            hintText: "Enter  your Email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 4.h),
        child: CustomTextFormField(
            controller: passwordEditTextController,
            hintText: "Create a Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildCreateAnAccountButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Create an account ".toUpperCase(),
        margin: EdgeInsets.only(left: 2.h, right: 4.h),
        onPressed: () {
          onTapCreateAnAccountButton(context);
        });
  }

  /// Navigates to the iphone11ProMaxOneScreen when the action is triggered.
  onTapCreateAnAccountButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxOneScreen);
  }

  /// Navigates to the iphone11ProMaxSixScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxSixScreen);
  }
}
