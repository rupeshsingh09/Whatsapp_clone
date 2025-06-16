import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  var contactContant = [
    {
      "img":
          "https://m.media-amazon.com/images/M/MV5BYTQ3NDU3YjEtMDQxNi00N2QxLWIxNjAtMmFlOWM5ZDY3MGVkXkEyXkFqcGc@._V1_.jpg",
      "name": " Rupesh",
      "status": "Busy",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Asheesh",
      "status": "Free",
    },
    {
      "img":
          "https://wp.scoopwhoop.com/wp-content/uploads/2022/01/61e65be7a9086f0001b221b5_4be09f27-9024-41b8-b772-9522037d83fa.jpg",
      "name": "Gautam",
      "status": "Available",
    },
    {
      "img":
          "https://www.beyoung.in/beyoungistan/wp-content/uploads/2022/09/Prithviraj-Sukumaran-1024x709.jpg",
      "name": "AbhiS",
      "status": "At home",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": " Rupesh",
      "status": "At office",
    },
    {
      "img":
          "https://www.beyoung.in/beyoungistan/wp-content/uploads/2022/09/Prithviraj-Sukumaran-1024x709.jpg",
      "name": "Ajay",
      "status": "At office",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": " Rupesh",
      "status": "Decent but not for all",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "name": " Rupesh",
      "status": "Not available",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Himanshu",
      "status": "Busy",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "name": "Anish",
      "status": "decent",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": " Rupesh",
      "status": "free",
    },
    {
      "img":
          "https://m.media-amazon.com/images/M/MV5BYTQ3NDU3YjEtMDQxNi00N2QxLWIxNjAtMmFlOWM5ZDY3MGVkXkEyXkFqcGc@._V1_.jpg",
      "name": " Rupesh",
      "status": "Busy",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Asheesh",
      "status": "Free",
    },
    {
      "img":
          "https://wp.scoopwhoop.com/wp-content/uploads/2022/01/61e65be7a9086f0001b221b5_4be09f27-9024-41b8-b772-9522037d83fa.jpg",
      "name": "Gautam",
      "status": "Available",
    },
    {
      "img":
          "https://www.beyoung.in/beyoungistan/wp-content/uploads/2022/09/Prithviraj-Sukumaran-1024x709.jpg",
      "name": "AbhiS",
      "status": "At home",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": " Rupesh",
      "status": "At office",
    },
    {
      "img":
          "https://www.beyoung.in/beyoungistan/wp-content/uploads/2022/09/Prithviraj-Sukumaran-1024x709.jpg",
      "name": "Ajay",
      "status": "At office",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": " Rupesh",
      "status": "Decent but not for all",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "name": " Rupesh",
      "status": "Not available",
    },
    {
      "img":
          "https://wp.scoopwhoop.com/wp-content/uploads/2022/01/61e65be7a9086f0001b221b5_4be09f27-9024-41b8-b772-9522037d83fa.jpg",
      "name": "Aims",
      "status": "Don't disturb me",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/close-up-portrait-serious-man-with-curly-hair_176532-7988.jpg",
      "name": "Shashank",
      "status": "I'm in office ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Uihelper.CustomText(
          text: "Select Contact",
          height: 18,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                contactContant[index]["img"].toString(),
              ),
            ),
            title: Uihelper.CustomText(
              text: contactContant[index]["name"].toString(),
              height: 20,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Uihelper.CustomText(
              text: contactContant[index]["status"].toString(),
              height: 15,
            ),
          );
        },
        itemCount: contactContant.length,
      ),
    );
  }
}
