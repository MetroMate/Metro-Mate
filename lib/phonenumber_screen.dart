import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:appwrite/appwrite.dart';
import 'navigation/router.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter Phone Number",style: GoogleFonts.josefinSans(fontSize: 20.sp,fontWeight: FontWeight.bold),),
            SizedBox.fromSize(
              size: Size(0, 5.h),
            ),
            TextField(
              controller: phoneNumber,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff333333), width: 1.0),
                ),
                hintText: 'Mobile Number',
                prefix: Text("+91"),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox.fromSize(
              size: Size(0, 5.h),
            ),
            ElevatedButton.icon(
              onPressed: () async {
                var secret = "await login(phoneNumber.text)";
                Navigator.pushNamed(context, NavigationRoutes.otp,
                    arguments: secret);
              },
              icon: Icon(Icons.password),
              label: Text(
                "Get OTP",
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
      ),
    );
  }
}

Future<String> login(String PhoneNumber) async {
  final client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
      .setProject('645f4264a2f1aff263a8'); // Your project ID

  final account = Account(client);

  final session = await account.createPhoneSession(
      userId: ID.unique(), phone: '+91$PhoneNumber');

  return session.secret;
}
