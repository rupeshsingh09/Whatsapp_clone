import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/Calls/callsscreen.dart';
import 'package:whatsapp_clone/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_clone/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp_clone/Screens/Home/Status/statusscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS", height: 35),
              Tab(text: "STATUS", height: 35),
              Tab(text: "CALLS", height: 35),
            ],
          ),
          toolbarHeight: 70,
          title: Uihelper.CustomText(
            text: "Whatsapp",
            height: 20,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/search.png", height: 40),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
