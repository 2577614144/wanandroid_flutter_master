import 'package:flutter/material.dart';
import 'package:wanandroid_flutter_master/pages/GankMzPage.dart';
import 'package:wanandroid_flutter_master/pages/HomePage.dart';
import 'package:wanandroid_flutter_master/pages/PublicSubscriptionPage.dart';
import 'package:wanandroid_flutter_master/widget/my_drawer_wdiget.dart';

class MyNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigatorState();
  }
}

class NavigatorState extends State<MyNavigator> {
  PageController _pageController = PageController(initialPage: 0);
  String appBarTitle = "首页";
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(appBarTitle),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          })),
      drawer:MyDrawer(),
      body: PageView(
        controller: _pageController,
        children: <Widget>[HomePage(), GankMzPage(), PublicSubscriptionPage()],
        onPageChanged: (index) {
          setState(() {
            this._currentIndex = index;
            _setAppBarTitle();
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            // 点击跳转对应的PageView
            _pageController.jumpToPage(index);
            setState(() {
              this._currentIndex = index;
              _setAppBarTitle();
            });
          },
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("首页"),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                title: Text("福利"),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text("公众号"),
                backgroundColor: Colors.white)
          ]),
    );
    
  }

  void _setAppBarTitle() {
    if (_currentIndex == 0) {
      this.appBarTitle = "首页";
    } else if (_currentIndex == 1) {
      this.appBarTitle = "福利";
    } else {
      this.appBarTitle = "公众号";
    }
  }
}




