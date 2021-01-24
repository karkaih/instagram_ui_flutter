import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.camera_alt,
            size: 32,
          ),
          onPressed: () {},
        ),
        title: Text(
          "instagram",
          style: TextStyle(fontFamily: 'chirok', fontSize: 40),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.live_tv,
              size: 32,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Stories",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.8),
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_right, size: 43),
                    Text(
                      "Watch All",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 122,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/users/user.png"))),
                          ),
                          Positioned(
                            bottom: 0,
                            right: -9,
                            child: Container(
                              child: Icon(Icons.add, color: Colors.white),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Your Story",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.8),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                story("assets/users/person1.jpg", "achraf"),
                story("assets/users/person2.jpg", "youssra"),
                story("assets/users/person3.jpg", "achraf"),
                story("assets/users/person3.jpg", "achraf"),
                story("assets/users/person1.jpg", "youssra"),
                story("assets/users/person3.jpg", "achraf"),
                story("assets/users/person2.jpg", "achraf"),
                story("assets/users/person3.jpg", "achraf1"),
              ],
            ),
          ),
          feed("assets/users/person2.jpg", "assets/1.jpg", "chirok"),
          feed("assets/users/person1.jpg", "assets/2.jpg", "youssra"),
          feed("assets/users/person3.jpg", "assets/3.jpg", "achraf"),
          feed("assets/users/person1.jpg", "assets/2.jpg", "youssra")
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 31,
                  color: Colors.black.withOpacity(.9),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 31,
                  color: Colors.black.withOpacity(.4),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.black.withOpacity(.4),
                  size: 31,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  size: 31,
                  color: Colors.black.withOpacity(.4),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline,
                  size: 31,
                  color: Colors.black.withOpacity(.4),
                )),
          ],
        ),
      ),
    );
  }
}

Widget story(String img, name) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFFc05ba6), width: 3)),
          child: ClipOval(
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.black.withOpacity(.8), fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget feed(String img, img2, name) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(.3)))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(img),
          ),
          title: Text(
            name,
            style: TextStyle(
                color: Colors.black.withOpacity(.8),
                fontWeight: FontWeight.w600,
                fontSize: 21),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset(
          img2,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border, size: 31),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(FontAwesomeIcons.solidComment, size: 31),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.send, size: 31)
                ],
              ),
              Icon(Icons.bookmark_border)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            "Liked By Achraf_kh and 26 others",
            style:
                TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.8)),
          ),
        )
      ],
    ),
  );
}
