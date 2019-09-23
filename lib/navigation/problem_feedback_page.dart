import 'package:flutter/material.dart';
import 'package:flutter_one/flutter_ui.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';
import 'package:flutter_one/res/strings.dart';

class ProblemFeedbackPage extends StatelessWidget {
  final _s = const TextStyle(fontSize: Dimens.text_size_normal);

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
          FlutterUi.promptInformation(Strings.problem_feedback_content),
          Divider(height: 0, color: FColors.color_divider),
          FlutterUi.fullLineTitle(Strings.issues),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.app_name, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.problems, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, color: FColors.color_divider),
          Padding(padding: EdgeInsets.only(top: 16)),
          Divider(height: 0, color: FColors.color_divider),
          FlutterUi.fullLineTitle(Strings.contact_me),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.qq, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.email, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, color: FColors.color_divider),
        ],
      ),
    );
  }
}
