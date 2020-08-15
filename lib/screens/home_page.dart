import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ioenotice/screens/about_page.dart';
import 'package:ioenotice/screens/notice_page.dart';

int selectedIndex = 0;
int _selectedPage = 0;
List<Widget> pageList = List<Widget>();

class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  void _onBottomNavigationBarItemTapped(newValue) {
    setState(() {
      selectedIndex = newValue;
      _selectedPage = newValue;
    });
  }

  @override
  void initState() {
    pageList.add((NoticePage()));
    pageList.add(AboutPage());
    super.initState();
  }

  @override
  void deactivate() {
    SystemNavigator.pop();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onBottomNavigationBarItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('About')),
        ],
      ),
    );
  }
}
