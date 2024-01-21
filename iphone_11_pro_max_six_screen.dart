import 'package:bus_trcker/core/app_export.dart';
import 'package:bus_trcker/widgets/app_bar/appbar_leading_image.dart';
import 'package:bus_trcker/widgets/app_bar/custom_app_bar.dart';
import 'package:bus_trcker/widgets/custom_checkbox_button.dart';
import 'package:bus_trcker/widgets/custom_elevated_button.dart';
import 'package:bus_trcker/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSixScreen extends StatelessWidget {
  Iphone11ProMaxSixScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  bool rememberMeCheckbox = false;

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
                            padding: EdgeInsets.symmetric(
                                horizontal: 41.h, vertical: 78.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 121.h),
                                      child: Text("log in",
                                          style:
                                              theme.textTheme.headlineMedium))),
                              SizedBox(height: 41.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text("Email",
                                          style: theme.textTheme.bodyLarge))),
                              SizedBox(height: 6.v),
                              _buildEmailField(context),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text("Password",
                                          style: theme.textTheme.bodyLarge))),
                              SizedBox(height: 8.v),
                              _buildPasswordField(context),
                              SizedBox(height: 11.v),
                              _buildRememberMeCheckbox(context),
                              SizedBox(height: 27.v),
                              _buildLoginButton(context),
                              SizedBox(height: 37.v),
                              Text("Forgot password ?",
                                  style: theme.textTheme.bodyMedium),
                              Spacer(),
                              SizedBox(height: 34.v),
                              _buildCreateAccountButton(context)
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
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            controller: emailFieldController,
            hintText: "Enter your email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: passwordFieldController,
            hintText: "Enter your Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Remember me".toUpperCase(),
                value: rememberMeCheckbox,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  rememberMeCheckbox = value;
                })));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Log in".toUpperCase(),
        margin: EdgeInsets.only(left: 10.h),
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Create an account ".toUpperCase(),
        margin: EdgeInsets.only(left: 12.h),
        onPressed: () {
          onTapCreateAccountButton(context);
        });
  }

  /// Navigates to the iphone11ProMaxOneScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxOneScreen);
  }

  /// Navigates to the iphone11ProMaxFourScreen when the action is triggered.
  onTapCreateAccountButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxFourScreen);
  }
}
