import 'package:flutter/material.dart';
import 'package:flutter_one/flutter_ui.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';
import 'package:flutter_one/res/strings.dart';

class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FColors.color_title,
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.donate),
        titleSpacing: 0,
        bottomOpacity: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: Dimens.thirty_two)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterUi.radio(Strings.ali_pay, true, true),
              FlutterUi.radio(Strings.ali_pay, false, false),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: Dimens.sixteen)),
          Image.asset(
            "images/ic_ali_pay.png",
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
