import 'package:flutter/material.dart';

import 'helper_widgets/profile_row_widget.dart';

class ViewPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ProfileRowWidget()
        ],
      ),
      body: ListView(
        children: <Widget>[
          
        ],
      ),
    );
  }
}