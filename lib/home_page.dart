import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  final images = [
    ['assets/images/person_1.jpg', false],
    ['assets/images/person_2.jpg', false],
    ['assets/images/person_3.jpg', true],
    ['assets/images/person_4.jpg', true],
    ['assets/images/person_5.jpg', true]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            icon: Icon(
              Feather.camera,
              color: Colors.black,
              size: 30,
            ),
            onPressed: null),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Feather.tv,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Feather.send,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null)
        ],
        bottom: PreferredSize(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text('InstaPic',
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ),
            ),
            preferredSize: Size.fromHeight(60)),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildStatusContainer(
                      images[index][0], images[index][1]);
                }),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          buildPostContainerMain()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedIconTheme: IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          unselectedIconTheme: IconThemeData(color:Colors.grey),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(30, 36, 57, 1),
                icon: Icon(
                  SimpleLineIcons.home,
                ),
                title: Text('Home')),
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(30, 36, 57, 1),
                icon: Icon(
                  Icons.search,
                ),
                title: Text('Search')),
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(30, 36, 57, 1),
                icon: Icon(
                  Icons.favorite_border,
                ),
                title: Text('Likes')),
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(30, 36, 57, 1),
                icon: Icon(
                  SimpleLineIcons.people,
                ),
                title: Text('Profile')),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.white,
        child: Icon(Feather.camera, color: Colors.red),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Padding buildPostContainerMain() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildProfileRow(),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: null)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/light_house.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          buildPostActionRow()
        ],
      ),
    );
  }

  Row buildPostActionRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            postHelpersRow(Icons.favorite_border, '234'),
            SizedBox(width: 10),
            postHelpersRow(EvilIcons.comment, '109')
          ],
        ),
        IconButton(
            icon: Icon(
              Feather.bookmark,
              size: 35,
            ),
            onPressed: null),
      ],
    );
  }

  Row postHelpersRow(IconData icon, String count) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: Icon(
              icon,
              size: 35,
            ),
            onPressed: null),
        Text(
          count,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }

  Row buildProfileRow() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundImage: ExactAssetImage('assets/images/person_4.jpg'),
        ),
        SizedBox(
          width: 15,
        ),
        Text('Emillie Porcinet',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18))
      ],
    );
  }

  Container buildStatusContainer(String imagePath, bool isViewed) {
    return Container(
      height: 90,
      width: 90,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: isViewed ? null : Border.all(color: Colors.red, width: 3),
          borderRadius: BorderRadius.circular(90)),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundImage: ExactAssetImage('$imagePath'),
        ),
      ),
    );
  }
}
