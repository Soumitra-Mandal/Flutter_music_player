import 'package:flutter/material.dart';
import 'package:shared_preferences_flutter_demo/screens/music_gallery.dart';
import 'package:shared_preferences_flutter_demo/screens/profile.dart';
import 'package:shared_preferences_flutter_demo/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  static const _pages = <Widget>[
    MusicGallery(),
    SearchScreen(),
    ProfileScreen(),
  ];

  static const _tabs = <Tab>[
    Tab(
      icon: Icon(
        Icons.music_note,
        size: 24,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.search,
        size: 24,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.person,
        size: 24,
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _pages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          children: _pages,
          controller: _tabController,
        ),
        bottomNavigationBar: Material(
          elevation: 15,
          color: Colors.grey[100],
          child: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[600],
            isScrollable: false,
            indicatorColor: Colors.blueGrey,
            tabs: _tabs,
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
