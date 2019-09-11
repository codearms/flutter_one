// 滑动效果
import 'package:flutter/material.dart';

class RouteSlide extends PageRouteBuilder {
  final Widget widget;

  RouteSlide(this.widget)
      : super(
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                      .animate(CurvedAnimation(
                          parent: animation1, curve: Curves.fastOutSlowIn)),
              child: child,
            );
          },
        );
}

// 渐变效果
class RouteFade extends PageRouteBuilder {
  final Widget widget;

  RouteFade(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return FadeTransition(
                opacity: Tween(begin: 0.0, end: 2.0).animate(CurvedAnimation(
                    parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}

// 缩放效果
class RouteScale extends PageRouteBuilder {
  final Widget widget;

  RouteScale(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: child);
            });
}

// 旋转+缩放效果
class RouteRotateScale extends PageRouteBuilder {
  final Widget widget;

  RouteRotateScale(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return RotationTransition(
                  turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: ScaleTransition(
                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                    child: child,
                  ));
            });
}
