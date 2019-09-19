import 'package:flutter/material.dart';
import 'package:flutter_one/flutter_ui.dart';
import 'package:flutter_one/res/colors.dart';
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
          FlutterUi.promptInformation(Strings.problem_feedback_content),
          Divider(height: 0, color: FColors.color_divider),
          FlutterUi.fullLineTitle(Strings.issues),
          FlutterUi.fullLineContent(Strings.app_name, () {}),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          FlutterUi.fullLineContent(Strings.problems, () {}),
          Divider(height: 0, color: FColors.color_divider),
          Padding(padding: EdgeInsets.only(top: 16)),
          Divider(height: 0, color: FColors.color_divider),
          FlutterUi.fullLineTitle(Strings.contact_me),
          FlutterUi.fullLineContent(Strings.qq, () {}),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          FlutterUi.fullLineContent(Strings.email, () {}),
          Divider(height: 0, color: FColors.color_divider),
        ],
      ),
    );
  }
}
