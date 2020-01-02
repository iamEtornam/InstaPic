import 'package:flutter/material.dart';

import 'helper_widgets/postAction_row_widget.dart';
import 'helper_widgets/profile_row_widget.dart';

class ViewPostPage extends StatelessWidget {
  final commentTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[ProfileRowWidget()],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            height: 500,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25)),
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/light_house.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: PostActionRowWidget(),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textCommentWidget(
                    'Marie Leclerct', 'Beautiful picture I love it!'),
                SizedBox(height: 8),
                textCommentWidget('Joseph Seraphin',
                    'I love this landscape. it\'s fantastic. I goto Brittany every year and it\'s a pleasure'),
                SizedBox(
                  height: 8,
                ),
                textCommentWidget('Bob Crot', 'Amazing!'),
                SizedBox(
                  height: 8,
                ),
                textCommentWidget('Jules Toupi', 'Nice color')
              ],
            ),
          ),
          SizedBox(height: 45),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        color: Color.fromRGBO(30, 36, 57, 1),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25),
          child: Center(child: inputTextBox()),
        ),
      ),
    );
  }


  RichText textCommentWidget(String name, String comment) {
    return RichText(
      softWrap: true,
      text: TextSpan(
          text: '$name : ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          children: [
            TextSpan(
              text: '$comment',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
            )
          ]),
    );
  }


  TextField inputTextBox() {
    return TextField(
      controller: commentTextController,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.none,
      maxLines: 1,
      enableInteractiveSelection: true,
      decoration: InputDecoration(
        labelText: 'Add a comment',
        alignLabelWithHint: true,
        hasFloatingPlaceholder: false,
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.all(13.0),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        fillColor: Colors.white,
        filled: true,
        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        errorStyle: TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}
