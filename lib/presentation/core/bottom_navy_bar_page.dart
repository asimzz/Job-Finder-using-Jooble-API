import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/domain/auth/user.dart';
import 'package:job_finder/infastructure/auth/models/user_model.dart';

import '../job_search/job_home_page.dart';
import '../job_search/job_search_form/job_search_page.dart';
import 'constants.dart';

class Index extends StatefulWidget {
  final User user;

  const Index({Key key, this.user}) : super(key: key);
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;
  onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _viewList = [
    JobHomePage(),
    JobSearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _viewList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: onTappedItem,
        selectedIndex: _selectedIndex,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: kBlackAccent,
            inactiveColor: kBlack,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            activeColor: kBlackAccent,
            inactiveColor: kBlack,
          ),
        ],
      ),
    );
  }
}
