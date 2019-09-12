import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/strings.dart';

class UpdateDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.update_description),
        titleSpacing: 0,
        bottomOpacity: 0,
      ),
    );
  }
}
