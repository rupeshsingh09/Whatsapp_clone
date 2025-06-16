import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/Screens/Home/homescreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';
import 'dart:io';

class profileScreen extends StatefulWidget {
  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickerimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Uihelper.CustomText(
              text: "Profile Info",
              height: 26,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 45),
            Uihelper.CustomText(
              text: "Please provide your name and an optional ",
              height: 19,
              color: Colors.black,
            ),
            SizedBox(height: 7),
            Uihelper.CustomText(
              text: "profile photo",
              height: 19,
              color: Colors.black,
            ),

            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                _openBotton(context);
              },
              child:
                  pickerimage == null
                      ? CircleAvatar(
                        radius: 105,
                        backgroundColor: Colors.grey,
                        child: Image.asset(
                          "assets/images/camera.png",
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      )
                      : CircleAvatar(
                        radius: 80,
                        backgroundImage: FileImage(pickerimage!),
                      ),
            ),

            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Type  your  name  here ",
                      hintStyle: TextStyle(color: Colors.black),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/emoji.png", height: 20),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBotton(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 60, color: Colors.grey),
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 60, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickerimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(ex.toString())));
    }
  }
}
