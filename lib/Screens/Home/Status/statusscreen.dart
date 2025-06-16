import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "name": "Rupesh",
      "StatusTime": "10 min ago",
    },
    {
      "img":
          "https://c8.alamy.com/comp/WAEGG7/portrait-of-a-south-indian-man-smiling-at-the-camera-WAEGG7.jpg",
      "name": "Asheesh",
      "StatusTime": "9 min ago",
    },
    {
      "img":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Gautam",
      "StatusTime": "12 min ago",
    },
    {
      "img":
          "https://c8.alamy.com/comp/WAEGG7/portrait-of-a-south-indian-man-smiling-at-the-camera-WAEGG7.jpg",
      "name": "Ajay",
      "StatusTime": "18 min ago",
    },
    {
      "img":
          "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA4L3Jhd3BpeGVsX29mZmljZV8yOV9waG90b19vZl9oYXBweV9pbmRpYW5fZmFtaWx5X29mX3RocmVlX3RoZV9mYV84NTg0YjY1NS0wN2RkLTQ5OTEtOTY5ZS1hZDE2MzEzYjgzMDcucG5n.png",
      "name": "Didi",
      "StatusTime": "1 hour ago",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "name": "Aims",
      "StatusTime": "59 min ago",
    },
    {
      "img":
          "https://c8.alamy.com/comp/WAEGG7/portrait-of-a-south-indian-man-smiling-at-the-camera-WAEGG7.jpg",
      "name": "Rupesh",
      "StatusTime": "10 min ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJVe6__2JCii1tDMVzlrt0vYYT9QIxVBsjLJE8aFLTR3ikm5HvDLN8m_VXhmSfwU6OzoU&usqp=CAU",
      "name": "Asheesh",
      "StatusTime": "9 min ago",
    },
    {
      "img":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Gautam",
      "StatusTime": "12 min ago",
    },
    {
      "img":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Ajay",
      "StatusTime": "18 min ago",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "name": "Didi",
      "StatusTime": "1 hour ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 10),
              Uihelper.CustomText(
                text: "Status",
                height: 30,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-vector/male-face-avatar-icon-set-flat-design-social-media-profiles_1281173-3806.jpg?semt=ais_hybrid&w=740",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Center(
                        child: Icon(Icons.add, color: Colors.white, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Uihelper.CustomText(text: "My Status", height: 20),
            subtitle: Uihelper.CustomText(
              text: "Tap to add status update",
              height: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.CustomText(text: "Recent Updates", height: 20),
                Icon(Icons.arrow_drop_down, size: 30),
              ],
            ),
          ),
          SizedBox(height: 15),
          // jo upr variable banye h image ke liye usko yha p use krenge
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      statusContent[index]["img"].toString(),
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: statusContent[index]["StatusTime"].toString(),
                    height: 16,
                  ),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
