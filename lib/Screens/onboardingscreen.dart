import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Login/loginscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/whatsapp_OnBoardScren.png"),
          SizedBox(height: 20),
          Uihelper.CustomText(
            text: "Welcome to Whatsapp",
            height: 20,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 1,
            runSpacing: 6,

            children: [
              Uihelper.CustomText(
                text: "Read out",
                height: 15,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Uihelper.CustomText(
                text: "Privacy Policy.",
                height: 15,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Uihelper.CustomText(
                text: "Tap ''Agree and Continue''",
                height: 15,
                color: Colors.black,
              ),
              Uihelper.CustomText(
                text: "to accept the ",
                height: 15,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Uihelper.CustomText(
                text: "Teams of Service",
                height: 15,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),

      floatingActionButton: Uihelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        buttonname: "Agree and Continue",
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
