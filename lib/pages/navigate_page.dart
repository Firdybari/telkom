import 'package:flutter/material.dart';
import 'package:inma_app/pages/profile_page.dart';

import 'dashboard_page.dart';
import 'list_barang_page.dart';

class NavigatePage extends StatefulWidget {
  const NavigatePage({Key? key}) : super(key: key);

  @override
  _NavigatePageState createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    DashboardPage(),
    ListBarangPage(),
    ProfilePage(),
  ];
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _itemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[350],
        selectedItemColor: Color(0xff3DB2FF),
        iconSize: 24,
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //backgroundColor: Colors.blue,
        onTap: _itemTapped,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/iconnavhome.png'),
              color: _selectedIndex == 0 ? Color(0xff3DB2FF) : Colors.grey[350],
              size: _selectedIndex == 0 ? 26 : 24,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/iconnavlist.png'),
              color: _selectedIndex == 1 ? Color(0xff3DB2FF) : Colors.grey[350],
              size: _selectedIndex == 1 ? 26 : 24,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/iconnavprofile.png'),
              color: _selectedIndex == 2 ? Color(0xff3DB2FF) : Colors.grey[350],
              size: _selectedIndex == 2 ? 26 : 24,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
