import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawer_header.dart';
import 'pages/book_page.dart';
import 'pages/home_page.dart';
import 'pages/movie_page.dart';
import 'pages/music_page.dart';
import 'pages/news_page.dart';
import 'pages/project_introduction.dart';
import 'res/colors.dart';
import 'res/iconfont.dart';
import 'res/strings.dart';
import 'routes.dart';

void main() => runApp(OneApp());

class OneApp extends StatelessWidget {
  // StatusBar设置为透明,去除半透明遮罩
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    // 将style设置到app
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
//      theme: ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 图标默认颜色
  final _unselectedIcon = IconThemeData(color: FColors.color_content_general);

  // 字体加粗
  final _font = const TextStyle(fontWeight: FontWeight.w700);

  // 默认选中项
  int _index = 0;
  var _colors = const <Color>[
    FColors.color_home,
    FColors.color_news,
    FColors.color_book,
    FColors.color_music,
    FColors.color_movie
  ];
  var _titles = const <String>[
    Strings.home,
    Strings.news,
    Strings.book,
    Strings.music,
    Strings.movie
  ];

  var _pageController = PageController(initialPage: 0);
  var pages = <Widget>[
    HomePage(),
    NewsPage(),
    BookPage(),
    MusicPage(),
    MoviePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colors[_index],
        title: Text(_titles[_index]),
        titleSpacing: 0, // Drawer图标和标题之间的间距
        bottomOpacity: 0,
      ),
      backgroundColor: FColors.bg,
      body: PageView.builder(
          onPageChanged: (index) => setState(() => _index = index),
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) =>
              pages.elementAt(_index)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(Strings.home, style: _font),
            icon: Icon(IconFont.icon_home),
            activeIcon: Icon(IconFont.icon_home, color: FColors.color_home),
          ),
          BottomNavigationBarItem(
            title: Text(Strings.news, style: _font),
            icon: Icon(IconFont.icon_news),
            activeIcon: Icon(IconFont.icon_news, color: FColors.color_news),
          ),
          BottomNavigationBarItem(
            title: Text(Strings.book, style: _font),
            icon: Icon(IconFont.icon_book),
            activeIcon: Icon(IconFont.icon_book, color: FColors.color_book),
          ),
          BottomNavigationBarItem(
            title: Text(Strings.music, style: _font),
            icon: Icon(IconFont.icon_music),
            activeIcon: Icon(IconFont.icon_music, color: FColors.color_music),
          ),
          BottomNavigationBarItem(
            title: Text(Strings.movie, style: _font),
            icon: Icon(IconFont.icon_movie),
            activeIcon: Icon(IconFont.icon_movie, color: FColors.color_movie),
          )
        ],

        // 当前选中下标
        currentIndex: _index,
        // 显示模式
        type: BottomNavigationBarType.fixed,
        // 图标大小
        iconSize: 32,
        // 没有选中图标样式
        unselectedIconTheme: _unselectedIcon,
        // 选中图标样式
        // selectedIconTheme: ,
        // 没有选中字体大小
        unselectedFontSize: 12,
        // 选中字体大小
        selectedFontSize: 12,
        // 没有选中字体颜色
        unselectedItemColor: FColors.color_content_general,
        // 选中字体颜色[效果一样,只能二选一]
        selectedItemColor: _colors[_index],
        // fixedColor: _colors[_index],

        onTap: _onItemTapped,
      ),
      drawer: showDrawer(context),
    );
  }

  void _onItemTapped(int index) {
    // BottomNavigationBar 和 PageView 关联
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
}

Widget showDrawer(BuildContext context) {
  final _color = FColors.color_content_main;
  final _font = const TextStyle(color: FColors.color_content_main);
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        // 头部
//        UserAccountsDrawerHeader(
//          //头像
//          currentAccountPicture: GestureDetector(
//            //圆形头像
//            child: ClipOval(
//              child: Image.network(
//                  'https://avatar.csdnimg.cn/C/0/1/1_yechaoa.jpg'),
//            ),
//          ),
//          // 其他头像
//          otherAccountsPictures: <Widget>[
//            IconButton(
//              icon: Icon(IconFont.icon_nav_scan_code, color: FColors.white),
//              onPressed: () {},
//            ),
//            IconButton(
//              icon: Icon(IconFont.icon_nav_scan_code, color: FColors.white),
//              onPressed: () {},
//            ),
//            IconButton(
//              icon: Icon(IconFont.icon_nav_scan_code, color: FColors.white),
//              onPressed: () {},
//            )
//          ],
//          accountName: Text(
//            Strings.login,
//            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//          ),
//          accountEmail: Text(Strings.personal_description),
//        ),
        OneDrawerHeader(),
        // 导航
        // 项目介绍
        ListTile(
          leading: Icon(
            IconFont.icon_nav_project_introduction,
            color: _color,
          ),
          title: Text(Strings.project_introduction, style: _font),
          onTap: () => push(context, ProjectIntroductionPage()),
        ),
        // 更新说明
        ListTile(
          leading: Icon(
            IconFont.icon_nav_update_description,
            color: _color,
          ),
          title: Text(Strings.update_description, style: _font),
          onTap: () => push(context, ProjectIntroductionPage()),
        ),
        // 扫码下载
        ListTile(
          leading: Icon(
            IconFont.icon_nav_scan_code,
            color: _color,
          ),
          title: Text(Strings.scan_code, style: _font),
          onTap: () => push(context, ProjectIntroductionPage()),
        ),
        // 问题反馈
        ListTile(
          leading: Icon(
            IconFont.icon_nav_problem_feedback,
            color: _color,
          ),
          title: Text(Strings.problem_feedback, style: _font),
          onTap: () => push(context, ProjectIntroductionPage()),
        ),
        // 关于我们
        ListTile(
          leading: Icon(IconFont.icon_nav_about, color: _color),
          title: Text(Strings.about, style: _font),
          onTap: () => push(context, ProjectIntroductionPage()),
        ),
        // 捐赠开发者
        ListTile(
          leading: Icon(
            IconFont.icon_nav_about,
            color: _color,
          ),
          title: Text(Strings.donate, style: _font),
          onTap: () => push(context, ProjectIntroductionPage()),
        ),
      ],
    ),
  );
}

void push(BuildContext context, Widget widget) {
  // Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  Navigator.push(context, RouteSlide(widget));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
