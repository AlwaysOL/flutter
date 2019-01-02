import 'package:flutter/material.dart';
import 'package:fluttertest/mainIndex/first.dart';
import 'package:fluttertest/mainIndex/second.dart';
import 'package:fluttertest/mainIndex/third.dart';
import 'package:fluttertest/view/navigation_icon_view.dart';

class Index extends StatefulWidget {

  Index({Key key}) : super(key: key) {
    print('new $key');
  }

  @override
  State<StatefulWidget> createState() => new _IndexState();
}

class _IndexState extends State<Index> {

  int _currentIndex = 0;
  List<NavigationView> _navigationViews;
  List<Widget> _pageList;
  StatefulWidget _currentPage;

  PageController _pageController = PageController();

  void _pageChanged(int index) {
    setState(() {
      if (_currentIndex != index) {
        _currentIndex = index;
      }
    });
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    print("index++initState");

//    _navigationViews = <NavigationView>[
//      NavigationView(icon: Icon(Icons.assessment), title: Text("首页"), vsync: this),
//      NavigationView(icon: Icon(Icons.all_inclusive), title: Text("想法"), vsync: this),
//      NavigationView(icon: Icon(Icons.shopping_cart), title: Text("市场"), vsync: this),
//    ];
//
//    for (NavigationView view in _navigationViews) {
//      view.controller.addListener(_rebuild);
//    }
//
    _pageList = <Widget> [
      new MyHomePage(),
      new Second(),
      new Third(),
    ];
//
//    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
//    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
//        items: _navigationViews.map((NavigationView navigationView) => navigationView.item).toList(),
//        currentIndex: _currentIndex,
//        type: BottomNavigationBarType.fixed,
//        onTap: (int index) {
//          setState(() {
//            _navigationViews[_currentIndex].controller.reverse();
//            _currentIndex = index;
//            _navigationViews[_currentIndex].controller.forward();
//            _currentPage = _pageList[_currentIndex];
//          });
//    },);
//
//    return MaterialApp(
//      home: Scaffold(
//        body: Center(
//          child: _currentPage,
//        ),
//        bottomNavigationBar: bottomNavigationBar,
//      ),
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//    );

    return Scaffold(
      body: new PageView(
        onPageChanged: _pageChanged,
        controller: _pageController,
        children: _pageList,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.all_inclusive), title: Text("想法")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("市场")),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          _pageController.jumpToPage(index);
//          _pageController.animateToPage(index,
//              duration: Duration(seconds: 1),
//              curve: new ElasticOutCurve(0.8));
          _pageChanged(index);
        },
      ),
    );
  }

}
