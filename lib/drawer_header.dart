import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneDrawerHeader extends StatefulWidget {
  const OneDrawerHeader({
    Key key,
    this.decoration,
    this.margin = const EdgeInsets.only(bottom: 8.0),
  }) : super(key: key);

  final Decoration decoration;
  final EdgeInsetsGeometry margin;

  @override
  State<StatefulWidget> createState() => _OneDrawerHeaderState();
}

class _OneDrawerHeaderState extends State<OneDrawerHeader> {
  @override
  Widget build(BuildContext context) {
//    return Semantics(
//      container: true,
//      label: MaterialLocalizations.of(context).signedInLabel,
//      child: DrawerHeader(
//        decoration: BoxDecoration(
//          color: Theme.of(context).primaryColor,
//          gradient: new LinearGradient(colors: [
//            Color(0xff81C784),
//            Color(0xff4CAF50),
//            Color(0xff2E7D32)
//          ]),
//        ),
//        margin: widget.margin,
//        padding: const EdgeInsetsDirectional.only(top: 16.0, start: 16.0),
//        child: SafeArea(
//          bottom: false,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[],
//          ),
//        ),
//      ),
//    );

    return DrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        gradient: new LinearGradient(
            colors: [Color(0xff81C784), Color(0xff4CAF50), Color(0xff2E7D32)],
            begin: FractionalOffset(1, 1),
            end: FractionalOffset(0, 0)),
      ),
      margin: widget.margin,
      padding: const EdgeInsetsDirectional.only(top: 16.0, start: 16.0),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[],
        ),
      ),
    );
  }
}
