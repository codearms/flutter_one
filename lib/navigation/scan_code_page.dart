import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/strings.dart';

class ScanCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.scan_code),
        titleSpacing: 0,
        bottomOpacity: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: FColors.color_content_secondary,
                width: 1,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Text(
              Strings.download_content,
              style: TextStyle(
                color: FColors.color_content_general,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Image.asset(
              "images/ic_code.png",
              width: 220,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
