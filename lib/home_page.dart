import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_pic/view_post_page.dart';

import 'helper_widgets/postAction_row_widget.dart';
import 'helper_widgets/profile_row_widget.dart';

class HomePage extends StatelessWidget {
  final statusData = [
    ['assets/images/person_1.jpg', false],
    ['assets/images/person_2.jpg', false],
    ['assets/images/person_3.jpg', true],
    ['assets/images/person_4.jpg', true],
    ['assets/images/person_5.jpg', true]
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width / 2 - 35;
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
                itemCount: statusData.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildStatusContainer(
                      statusData[index][0], statusData[index][1]);
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
          buildPostContainerMain(context)
        ],
      ),
      bottomNavigationBar: Stack(
        children: <Widget>[
          Container(
            height: 90,
            color: Color.fromRGBO(30, 36, 57, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      SimpleLineIcons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: null),
                SizedBox(height: 45, width: 45),
                IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      SimpleLineIcons.people,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: null)
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: size,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(90),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                    Icon(SimpleLineIcons.camera, size: 35, color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPostContainerMain(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ProfileRowWidget(),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: null)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViewPostPage()),
              );
            },
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/light_house.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          PostActionRowWidget()
        ],
      ),
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
