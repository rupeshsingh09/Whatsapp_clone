import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "name": "Rupesh",
      "img":
          "https://www.beyoung.in/beyoungistan/wp-content/uploads/2022/09/Prithviraj-Sukumaran-1024x709.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "Ashessh",
      "img":
          "https://images.news18.com/webstories/2023/12/Thank-you-pondatti-for-showing-us-how-to-celebrate-life.jpg",
      "calltime": "40 min ago",
    },
    {
      "name": "Gautam",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "calltime": "10 min ago",
    },
    {
      "name": "Shashank",
      "img":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "calltime": "50 min ago",
    },
    {
      "name": "Ajay",
      "img":
          "https://images.news18.com/webstories/2023/12/Thank-you-pondatti-for-showing-us-how-to-celebrate-life.jpg",
      "calltime": "15 hour ago",
    },
    {
      "name": "Rupesh",
      "img":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "Aims",
      "img":
          "https://images.news18.com/webstories/2023/12/Thank-you-pondatti-for-showing-us-how-to-celebrate-life.jpg",
      "calltime": "19 min ago",
    },
    {
      "name": "Anish",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Ram_at_Unnadi_Okate_Zindagi_interview.png",
      "calltime": "15 sec ago",
    },
    {
      "name": "Rupesh",
      "img":
          "https://m.media-amazon.com/images/M/MV5BYTQ3NDU3YjEtMDQxNi00N2QxLWIxNjAtMmFlOWM5ZDY3MGVkXkEyXkFqcGc@._V1_.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "Abhi",
      "img":
          "https://www.beyoung.in/beyoungistan/wp-content/uploads/2022/09/Prithviraj-Sukumaran-1024x709.jpg",
      "calltime": "15 min ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.CustomText(text: "Recent", height: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      callContent[index]["img"].toString(),
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: callContent[index]["calltime"].toString(),
                    height: 15,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Colors.green),
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
