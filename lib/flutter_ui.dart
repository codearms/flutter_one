import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';

class FlutterUi {
  static promptInformation(String text) {
    return Container(
      margin: EdgeInsets.all(Dimens.sixteen),
      padding: EdgeInsets.all(Dimens.twelve),
      decoration: BoxDecoration(
        border: Border.all(
          color: FColors.color_content_secondary,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(Dimens.four)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: FColors.color_content_general,
          fontSize: Dimens.text_size_small,
        ),
      ),
    );
  }



  static fullLineTitle(String text) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: FColors.color_title,
            padding: EdgeInsets.fromLTRB(
              Dimens.sixteen,
              Dimens.eight,
              Dimens.sixteen,
              Dimens.eight,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: FColors.color_content_secondary,
                fontSize: Dimens.text_size_small,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static fullLineContent(String text, VoidCallback pressed) {
    return Container(
      height: Dimens.forty_eight,
      child: RaisedButton(
        color: FColors.color_title,
        // 不设置有圆角
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        highlightColor: FColors.color_divider,
        textColor: FColors.color_content_main,
        elevation: 0,
        highlightElevation: 0,
        child: new Align(
          alignment: FractionalOffset.centerLeft,
          child: Text(
            text,
            style: TextStyle(fontSize: Dimens.text_size_normal),
          ),
        ),
        onPressed: pressed,
      ),
    );
  }
}
