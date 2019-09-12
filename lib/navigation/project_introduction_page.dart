import 'package:flutter/material.dart';
import 'package:flutter_one/res/colors.dart';
import 'package:flutter_one/res/strings.dart';

class ProjectIntroductionPage extends StatelessWidget {
  final s_18 = TextStyle(color: FColors.color_content_main, fontSize: 18);
  final s_16 = TextStyle(color: FColors.color_content_general, fontSize: 16);
  final s_14 = TextStyle(color: FColors.color_content_secondary, fontSize: 14);
  final read = TextStyle(color: FColors.color_content_general, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: FColors.color_navigation,
            title: Text(Strings.project_introduction),
            titleSpacing: 0,
            // 展开高度
            expandedHeight: 220,
            // 是否固定导航栏,为true是固定,为false是不固定.往上滑,导航栏可以隐藏
            pinned: true,
            // 滑动到最上面,再滑动是否隐藏导航栏的文字和标题等的具体内容.为true是隐藏,为false是不隐藏
            floating: false,
            // 只跟floating相对应。如果为true,floating必须为true,也就是向下滑动一点儿,整个大背景就会动画显示全部,网上滑动整个导航栏的内容就会消失
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/bg_project_introduction.jpg",
                  fit: BoxFit.cover),
            ),
          ),
          new SliverFixedExtentList(
            itemExtent: 714,
            delegate: new SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(Strings.introduction_title, style: s_18),
                    // 1
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(Strings.introduction_1, style: s_16),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(Strings.introduction_1_text, style: s_14),
                    ),
                    // 2
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(Strings.introduction_2, style: s_16),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(Strings.introduction_2_text, style: s_14),
                    ),
                    // 3
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(Strings.introduction_3, style: s_16),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(Strings.introduction_3_text, style: s_14),
                    ),
                    // 4
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(Strings.introduction_4, style: s_16),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(Strings.introduction_4_text, style: s_14),
                    ),
                    // 5
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(Strings.introduction_5, style: s_16),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(Strings.introduction_5_text, style: s_14),
                    ),
                    // 结尾
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(Strings.introduction_read_me, style: read),
                    ),
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
