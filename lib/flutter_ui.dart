import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/dimens.dart';

class NavigationItem extends StatelessWidget {
  final Color color;
  final Color splashColor;
  final Widget leading;
  final Widget title;
  final GestureTapCallback onTap;

  final _o = EdgeInsets.zero;
  final _p = const EdgeInsets.only(left: Dimens.sixteen, right: Dimens.sixteen);

  const NavigationItem({
    Key key,
    this.color,
    this.splashColor,
    this.leading,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: color == null ? FColors.transparent : color,
      child: InkWell(
        splashColor: splashColor == null ? FColors.color_divider : splashColor,
        child: Container(
          height: Dimens.forty_eight,
          child: Row(
            children: <Widget>[
              Padding(padding: leading == null ? _o : _p, child: leading),
              Padding(padding: title == null ? _o : _p, child: title),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}

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

  static radio(String text, bool left, bool check) {
    const z = FColors.color_news;
    const w = FColors.color_navigation;
    const radius = Radius.circular(Dimens.thirty_two);
    const l = BorderRadius.only(topLeft: radius, bottomLeft: radius);
    const r = BorderRadius.only(topRight: radius, bottomRight: radius);

    final bg = left
        ? (check ? z : FColors.color_title)
        : (check ? w : FColors.color_title);
    final b = left
        ? (check ? null : Border.all(color: w, width: 1.5))
        : (check ? null : Border.all(color: z, width: 1.5));
    final tr = left
        ? (check ? FColors.color_title : w)
        : (check ? FColors.color_title : z);

    return Container(
      width: 80,
      height: Dimens.thirty_two,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bg,
        border: b,
        borderRadius: left ? l : r,
      ),
      child: Text(
        text,
        style: TextStyle(color: tr, fontSize: Dimens.text_size_normal),
      ),
    );
  }
}

class Agreement extends StatelessWidget {
  final String text;

  const Agreement(
    this.text, {
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "《",
            style: TextStyle(
              color: FColors.color_content_main,
              fontSize: Dimens.text_size_smaller,
            ),
          ),
          TextSpan(
            text: text,
            style: TextStyle(
              color: FColors.color_content_main,
              fontSize: Dimens.text_size_smaller,
              decoration: TextDecoration.underline,
              textBaseline: TextBaseline.ideographic,
            ),
          ),
          TextSpan(
            text: "》",
            style: TextStyle(
              color: FColors.color_content_main,
              fontSize: Dimens.text_size_smaller,
            ),
          ),
        ],
      ),
    );
  }
}
