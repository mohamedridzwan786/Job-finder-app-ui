import 'package:flutter/material.dart';
import 'package:aureus/src/views/main-screens/components-screens/recent-jobs-view.dart';
import 'package:aureus/src/views/main-screens/components-screens/near-you-view.dart';

class JobListingScreen extends StatefulWidget {
  const JobListingScreen({Key? key}) : super(key: key);

  @override
  State<JobListingScreen> createState() => _JobListingScreenState();
}

class _JobListingScreenState extends State<JobListingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _selectedColor = Color(0xffe46b10).withOpacity(0.8);
  final _unselectedColor = Colors.grey;
  final _tabs = [
    Tab(text: 'Recent Jobs'),
    Tab(text: 'Near You'),
  ];

  final _iconTabs = [
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.search)),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget _appBar() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 3),
              child: Text(
                "Hi Mark 👋",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBar2() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 1, bottom: 10),
              child: Text(
                "Find The Best Job Here!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffe46b10).withOpacity(0.07),
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .27),
                      TabBar(
                        controller: _tabController,
                        tabs: _tabs,
                        labelColor: _selectedColor,
                        indicatorColor: _selectedColor,
                        unselectedLabelColor: _unselectedColor,
                        indicatorSize: TabBarIndicatorSize.label,
                      ),
                      // SizedBox(height: height * .25),
                      Container(
                        height: 600,
                        child: TabBarView(
                          controller: _tabController,
                          children: [RecentJobs(), NearYou()],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 220,
                  width: double.infinity,
                  color: Color(0xffe46b10).withOpacity(0.8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 25),
                        child: _appBar(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 5),
                        child: _appBar2(),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 13, top: 20, right: 13),
                        child: Container(
                          height: 50,
                          child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                fillColor: Colors.white38.withOpacity(0.1),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none),
                                hintText: '   Start Searching for Jobs',
                                hintStyle: TextStyle(
                                    color: Colors.black45, fontSize: 18),
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(
                                    left: 13,
                                  ),
                                  child: Icon(Icons.search, size: 28),
                                  width: 18,
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
