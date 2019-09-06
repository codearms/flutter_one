import 'package:flutter/material.dart';

import 'drawer_header.dart';
import 'res/colors.dart';
import 'res/iconfont.dart';
import 'res/strings.dart';

void main() => runApp(OneApp());

class OneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "One",
      theme: ThemeData.light(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("One"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: null,
        child: Icon(
          Icons.add,
          color: FColors.color_content_main,
        ),
      ),
      drawer: showDrawer(),
    );
  }
}

Widget showDrawer() {
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
          onTap: () {},
        ),
        // 更新说明
        ListTile(
          leading: Icon(
            IconFont.icon_nav_update_description,
            color: _color,
          ),
          title: Text(Strings.update_description, style: _font),
          onTap: () {},
        ),
        // 扫码下载
        ListTile(
          leading: Icon(
            IconFont.icon_nav_scan_code,
            color: _color,
          ),
          title: Text(Strings.scan_code, style: _font),
          onTap: () {},
        ),
        // 问题反馈
        ListTile(
          leading: Icon(
            IconFont.icon_nav_problem_feedback,
            color: _color,
          ),
          title: Text(Strings.problem_feedback, style: _font),
          onTap: () {},
        ),
        // 关于我们
        ListTile(
          leading: Icon(
            IconFont.icon_nav_about,
            color: _color,
          ),
          title: Text(Strings.about, style: _font),
          onTap: () {},
        ),
        // 捐赠开发者
        ListTile(
          leading: Icon(
            IconFont.icon_nav_about,
            color: _color,
          ),
          title: Text(Strings.donate, style: _font),
          onTap: () {},
        ),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
