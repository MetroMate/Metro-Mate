import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metromate/navigation/router.dart';
import 'dart:ui' as ui;
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(
        children: [
          Container(
            height: 20.h,
            child: CustomPaint(
              painter: OpenPainter(MediaQuery.of(context).size),
            ),
          ),
          Image.asset(
            "assets/DESTINY.png",
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox.fromSize(
            size: Size(0, 20.h),
          ),
          OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed(NavigationRoutes.phoneNumber);
              },
              icon: Icon(Icons.phone_android),
              label: Text(
                "Use Phone Number",
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12.sp)),
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: EdgeInsetsDirectional.all(20),
                  side: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
          SizedBox.fromSize(
            size: Size(0, 5.h),
          ),
          Container(
            child: Text("OR",style: TextStyle(color: Colors.white),),
            padding: EdgeInsets.all(10),
            decoration:
                BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white)),
          ),
          SizedBox.fromSize(
            size: Size(0, 5.h),
          ),
          ElevatedButton.icon(
            onPressed: () {

            },
            icon: Image.asset(
              "assets/ri_google-fill.png",
            ),
            label: Text(
              "Login with Google",
              style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12.sp)),
            ),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: EdgeInsetsDirectional.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  Size size;

  OpenPainter(this.size);

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width / 2, 0),
        Offset(size.width / 2, size.height * 2),
        [
          const Color(0xffC375F2),
          const Color(0x87333333),
        ],
      );
    canvas.drawCircle(
        Offset(this.size.width - this.size.width / 1.2, 0), 400, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
