import 'package:country_picker/country_picker.dart';
import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/utils/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = '+20';
  TextEditingController mobilController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Enter Your mobil number',
              style: AppTextStyles.body16,
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      onSelect: (Country country) {
                        setState(() {
                          selectedCountry = '+${country.phoneCode}';
                        });
                        print('Select Country: ${country.displayName}');
                      },
                    );
                  },
                  child: Container(
                    height: 6.h,
                    width: 25.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      color: greyShade3,
                    ),
                    child: Text(
                      selectedCountry,
                      style: AppTextStyles.body14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 65.w,
                  child: TextField(
                    controller: mobilController,
                    cursorColor: black,
                    style: AppTextStyles.textFieldTextStyle,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 2.w),
                      hintText: 'Mobile number',
                      hintStyle: AppTextStyles.textFieldHintTextStyle,
                      // filled: true,
                      // fillColor: greyShade3,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: black,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: black,
                minimumSize: Size(90.h, 6.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {},
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Next',
                      style: AppTextStyles.body16.copyWith(
                        color: white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 2.w,
                    child: Icon(
                      Icons.arrow_forward,
                      color: white,
                      size: 4.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.w,
            ),
            Text(
              'By proceeding, you consent to get calls, Whatsapp or SMS messages, including by automated means, from uber and its affiliates to the number provided.',
              style: AppTextStyles.small12.copyWith(
                color: grey,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text(
                    'or',
                    style: AppTextStyles.small12.copyWith(
                      color: grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                backgroundColor: white,
                minimumSize: Size(90.h, 6.h),
                elevation: 2,
              ),
              onPressed: () {},
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Continue with Google',
                      style: AppTextStyles.body16
                    ),
                  ),
                  Positioned(
                    left: 2.w,
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: black,
                      size: 4.h,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
