import 'package:flutter/material.dart';
import 'package:aureus/src/views/main-screens/applied-jobs-screen.dart';
import 'package:aureus/src/views/main-screens/job-listing-screen.dart';
import 'package:aureus/src/views/main-screens/profile-screen.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}
class _TabBarScreenState extends State<TabBarScreen> {
  List<Widget> pageList = [];
  int _currentIndex = 0;

  @override
  void initState() {
    pageList.add(JobListingScreen());
    pageList.add(AppliedJobScreen());
    pageList.add(ProfileScreen());
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon:new SizedBox(
                child:  Icon(Icons.list_alt_outlined, size: 28),
                width: 38,
                height: 38,
              ),
              label: 'Job Listings'),
          BottomNavigationBarItem(
              icon:new SizedBox(
                child: Icon(Icons.edit, size: 28),
                width: 38,
                height: 38,
              ),
              label: 'Applied Jobs'),
          BottomNavigationBarItem(
              icon:new SizedBox(
                child: Icon(Icons.person, size: 28),
                width: 38,
                height: 38,
              ),
              label: 'Profile')
        ],
      ),
    );
  }



}