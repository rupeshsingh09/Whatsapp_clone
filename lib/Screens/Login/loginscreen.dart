import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/OTP/otpscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = "India";

  List<String> countries = ["America", "Afreica", "Italy", "India", "Germany"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5, right: 60),
          child: Center(
            child: Uihelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 5),
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 20,
              children: [
                SizedBox(height: 50),

                Uihelper.CustomText(
                  text:
                      "Whatsapp will need to verify your phone number. Carreir charges may apply",
                  height: 20,
                  color: Colors.black,
                ),
                Uihelper.CustomText(text: "What's my number ?", height: 20),
              ],
            ),
          ),
          SizedBox(height: 60),
          // dropdownbutton banaye h , explain  in copy
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 60),
            child: DropdownButtonFormField<String>(
              value: selectedcountry,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
              items:
                  countries.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedcountry = value!;
                });
              },
            ),
          ),
          SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+91",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 250,
                child: Expanded(
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter the number"),
          backgroundColor: Colors.lightGreen,
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OTPScreen(phonenumber: phonenumber),
        ),
      );
    }
  }
}
