import 'package:flutter/material.dart';
import 'package:flutter_one/app.dart';
import 'package:flutter_one/flutter_ui.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';
import 'package:flutter_one/res/strings.dart';
import 'package:sprintf/sprintf.dart';

class AboutPage extends StatelessWidget {
  final _s = const TextStyle(fontSize: Dimens.text_size_normal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FColors.bg,
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.about),
        titleSpacing: 0,
        bottomOpacity: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, Dimens.thirty_two, 0, 0),
            child: Center(
              child: Image.asset(
                "images/ic_launcher.png",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Dimens.four),
            child: Text(
              sprintf(Strings.current_version, [App.packageInfo.version]),
              style: TextStyle(
                color: FColors.color_content_secondary,
                fontSize: Dimens.text_size_smaller,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: Dimens.thirty_two)),
          Divider(height: 0, color: FColors.color_divider),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.project_introduction, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.check_update, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.update_description, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, indent: 16, color: FColors.bg_mask),
          NavigationItem(
            color: FColors.color_title,
            title: Text(Strings.give_a_star, style: _s),
            onTap: () {},
          ),
          Divider(height: 0, color: FColors.color_divider),
          Expanded(child: Padding(padding: EdgeInsets.zero)),
          Padding(
            padding: EdgeInsets.only(bottom: Dimens.eight),
            child: Agreement(Strings.gank),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: Dimens.eight),
            child: Agreement(Strings.dou_ban),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: Dimens.eight),
            child: Text(
              Strings.copyright,
              style: TextStyle(
                color: FColors.color_content_secondary,
                fontSize: Dimens.text_size_smallest,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
