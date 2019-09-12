import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/strings.dart';

class ProblemFeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.problem_feedback),
        titleSpacing: 0,
        bottomOpacity: 0,
      ),
    );
  }
}
