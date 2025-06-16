import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/Contact/contactscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Asheesh",
      "lastmsg": "say something",
      "time": "05:45",
      "msg": "8",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1398385367/photo/happy-millennial-business-woman-in-glasses-posing-with-hands-folded.jpg?s=612x612&w=0&k=20&c=Wd2vTDd6tJ5SeEY-aw0WL0bew8TAkyUGVvNQRj3oJFw=",
      "name": "Rupesh",
      "lastmsg": "Ya sure",
      "time": "05:15",
      "msg": "4",
    },
    {
      "images":
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Aims",
      "lastmsg": "bolo",
      "time": "05:06",
      "msg": "8",
    },
    {
      "images":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Shashank",
      "lastmsg": "Papa ji boliye",
      "time": "04:06",
      "msg": "12",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1398385367/photo/happy-millennial-business-woman-in-glasses-posing-with-hands-folded.jpg?s=612x612&w=0&k=20&c=Wd2vTDd6tJ5SeEY-aw0WL0bew8TAkyUGVvNQRj3oJFw=",
      "name": "Didi",
      "lastmsg": "Ya sure",
      "time": "05:15",
      "msg": "4",
    },
    {
      "images":
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Asheesh",
      "lastmsg": "ok",
      "time": "05:06",
      "msg": "8",
    },
    {
      "images":
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Aajju bhai",
      "lastmsg": "ok",
      "time": "05:06",
      "msg": "8",
    },
    {
      "images":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Asheesh",
      "lastmsg": "hlw",
      "time": "05:45",
      "msg": "8",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1398385367/photo/happy-millennial-business-woman-in-glasses-posing-with-hands-folded.jpg?s=612x612&w=0&k=20&c=Wd2vTDd6tJ5SeEY-aw0WL0bew8TAkyUGVvNQRj3oJFw=",
      "name": "Rupesh",
      "lastmsg": "Ya sure",
      "time": "05:15",
      "msg": "4",
    },
    {
      "images":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Asheesh",
      "lastmsg": "hlw",
      "time": "05:45",
      "msg": "8",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1398385367/photo/happy-millennial-business-woman-in-glasses-posing-with-hands-folded.jpg?s=612x612&w=0&k=20&c=Wd2vTDd6tJ5SeEY-aw0WL0bew8TAkyUGVvNQRj3oJFw=",
      "name": "Rupesh",
      "lastmsg": "Ya sure",
      "time": "05:15",
      "msg": "4",
    },
    {
      "images":
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Aims",
      "lastmsg": "ok",
      "time": "05:06",
      "msg": "8",
    },
    {
      "images":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Shashank",
      "lastmsg": "ok done ",
      "time": "04:06",
      "msg": "12",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1398385367/photo/happy-millennial-business-woman-in-glasses-posing-with-hands-folded.jpg?s=612x612&w=0&k=20&c=Wd2vTDd6tJ5SeEY-aw0WL0bew8TAkyUGVvNQRj3oJFw=",
      "name": "Didi",
      "lastmsg": "Ya sure",
      "time": "05:15",
      "msg": "4",
    },
    {
      "images":
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Aims",
      "lastmsg": "ok",
      "time": "05:06",
      "msg": "8",
    },
    {
      "images":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Shashank",
      "lastmsg": "ok done ",
      "time": "04:06",
      "msg": "12",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1398385367/photo/happy-millennial-business-woman-in-glasses-posing-with-hands-folded.jpg?s=612x612&w=0&k=20&c=Wd2vTDd6tJ5SeEY-aw0WL0bew8TAkyUGVvNQRj3oJFw=",
      "name": "Didi",
      "lastmsg": "Ya sure",
      "time": "05:15",
      "msg": "4",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 25,
                    color: Colors.black,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 25,
                    color: Colors.purple,
                  ),
                  trailing: Column(
                    children: [
                      Uihelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 18,
                        color: Colors.red,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Uihelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 19,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),

      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactScreen()),
          );
        },
        child: CircleAvatar(
          radius: 45,
          backgroundColor: Colors.green,
          child: Image.asset("assets/images/chat.png"),
        ),
      ),
    );
  }
}
