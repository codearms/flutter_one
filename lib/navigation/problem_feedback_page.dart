import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';
import 'package:flutter_one/res/strings.dart';

class ProblemFeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FColors.bg,
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.problem_feedback),
        titleSpacing: 0,
        bottomOpacity: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
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
              Strings.problem_feedback_content,
              style: TextStyle(
                color: FColors.color_content_general,
                fontSize: Dimens.text_size_small,
              ),
            ),
          ),
          Divider(height: 0, color: FColors.color_divider),
          Row(
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
                    Strings.contact_me,
                    style: TextStyle(
                      color: FColors.color_content_secondary,
                      fontSize: Dimens.text_size_small,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 48,
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
                  Strings.app_name,
                  style: TextStyle(fontSize: Dimens.text_size_normal),
                ),
              ),
              onPressed: () {},
            ),
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          Container(
            height: 48,
            child: RaisedButton(
              color: FColors.color_title,
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
                  Strings.problems,
                  style: TextStyle(fontSize: Dimens.text_size_normal),
                ),
              ),
              onPressed: () {},
            ),
          ),
          Divider(height: 0, color: FColors.color_divider),
          Padding(padding: EdgeInsets.only(top: 16)),
          Divider(height: 0, color: FColors.color_divider),
          Row(
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
                    Strings.contact_me,
                    style: TextStyle(
                      color: FColors.color_content_secondary,
                      fontSize: Dimens.text_size_small,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 48,
            child: RaisedButton(
              color: FColors.color_title,
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
                  Strings.qq,
                  style: TextStyle(fontSize: Dimens.text_size_normal),
                ),
              ),
              onPressed: () {},
            ),
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          Container(
            height: 48,
            child: RaisedButton(
              color: FColors.color_title,
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
                  Strings.email,
                  style: TextStyle(fontSize: Dimens.text_size_normal),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
