import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Profile/profilescreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class OTPScreen extends StatelessWidget {
  String phonenumber;
  OTPScreen({required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Uihelper.CustomText(
              text: "Verifying your number",
              height: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 50),
            Uihelper.CustomText(
              text: "You've tried to regular +91${phonenumber}",
              height: 15,
              color: Colors.black,
            ),
            Uihelper.CustomText(
              text: "recently. wait before requesting an sms or a call",
              height: 15,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(
                  text: "with your code",
                  height: 15,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                GestureDetector(
                  // explain in copy
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Uihelper.CustomText(
                    text: "Wrong number",
                    height: 15,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // otp vala box banane k liye
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Uihelper.CustomContainer(otp1Controller),
                Uihelper.CustomContainer(otp2Controller),
                Uihelper.CustomContainer(otp3Controller),
                Uihelper.CustomContainer(otp4Controller),
                Uihelper.CustomContainer(otp5Controller),
                Uihelper.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 50),
            Uihelper.CustomText(
              text: "Didn't receive code ? ",
              height: 20,
              color: Colors.green,
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profileScreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
