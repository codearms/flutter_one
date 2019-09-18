import 'package:flutter/material.dart';
import 'package:flutter_one/flutter_ui.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';
import 'package:flutter_one/res/iconfont.dart';
import 'package:flutter_one/res/strings.dart';

class ScanCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FColors.bg,
      appBar: AppBar(
        backgroundColor: FColors.color_navigation,
        title: Text(Strings.scan_code),
        titleSpacing: 0,
        bottomOpacity: 0,
        actions: <Widget>[
          IconButton(
            icon: new Icon(IconFont.ic_menu_star),
            onPressed: () {},
          ),
          IconButton(
            icon: new Icon(IconFont.ic_menu_share),
            onPressed: () {},
          ),
//          PopupMenuButton(
//            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
//              selectView(Icons.message, '发起群聊', 'A'),
//              selectView(Icons.group_add, '添加服务', 'B'),
//              selectView(Icons.cast_connected, '扫一扫码', 'C'),
//            ],
//            onSelected: (String action) {
//              switch (action) {
//                case 'A':
//                  break;
//                case 'B':
//                  break;
//                case 'C':
//                  break;
//              }
//            },
//          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          FlutterUi.promptInformation(Strings.download_content),
          Container(
            margin: EdgeInsets.fromLTRB(0, Dimens.thirty_two, 0, 0),
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Image.asset(
              "images/ic_code.png",
              width: 220,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, Dimens.sixteen, 0, 0),
            padding: EdgeInsets.all(Dimens.sixteen),
            child: Text(
              Strings.star_content,
              style: TextStyle(
                color: FColors.color_content_secondary,
                fontSize: Dimens.text_size_small,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  // 返回每个隐藏的菜单项
  selectView(IconData icon, String text, String id) {
    return new PopupMenuItem<String>(
        value: id,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(icon, color: Colors.blue),
            new Text(text),
          ],
        ));
  }
}
