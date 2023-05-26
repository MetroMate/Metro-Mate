import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import 'navigation/router.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bypassing the Barrier!",
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(fontSize: 25.sp,fontWeight: FontWeight.bold),
          ),
          Text(
            "Help us ensure it's really you by typing in the OTP",
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(fontSize: 20.sp),
          ),
          SizedBox.fromSize(
            size: Size(0, 5.h),
          ),
          const Center(
            child: Pinput(
              length: 6,
              androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                    color: Color(0xff333333), shape: BoxShape.circle),
              ),
              focusedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                    color: Color(0xff333333), shape: BoxShape.circle),
              ),
              submittedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                    color: Color(0xffC375F2), shape: BoxShape.circle),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(0, 5.h),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              var secret = "await login(phoneNumber.text)";
              Navigator.pushNamed(context, NavigationRoutes.discovery);
            },
            icon: Icon(Icons.arrow_forward_ios_rounded),
            label: Text(
              "Verify",
              style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12.sp)),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff333333),
                padding: EdgeInsetsDirectional.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    );
  }
}
