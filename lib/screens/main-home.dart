import 'package:design_ui/widgets/w-badge.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../screens/screens.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currPage = 0;

  List<Widget> _pages = [
    Home(),
    Favorite(),
    Task(),
    Account(),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onChanePage(int i) {
    setState(() {
      _currPage = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      appBar: _buildAppBar(_scaffoldKey),
      body: _pages[_currPage],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: _currPage,
          onTap: _onChanePage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_comment),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        ),
      ),
      floatingActionButton: WBadge(
        value: '1',
        color: Colors.red,
        child: FloatingActionButton(
          backgroundColor: Color(0XFF4e55af),
          onPressed: () {},
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildAppBar(GlobalKey<ScaffoldState> scaffoldKey) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => scaffoldKey.currentState.openDrawer(),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
      title: const WTitleAppBar(),
    );
  }
}
