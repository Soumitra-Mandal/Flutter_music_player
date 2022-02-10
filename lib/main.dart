import 'package:flutter/material.dart';
import 'package:shared_preferences_flutter_demo/screens/music_gallery.dart';
import 'screens/profile.dart';
import 'screens/search_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
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
        size: 25,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.search,
        size: 25,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.person,
        size: 25,
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.blueGrey[900],
          title: const Center(
            child: Text(
              "Play Music",
              style: TextStyle(fontFamily: "Open Sans"),
            ),
          ),
        ),
        body: TabBarView(
          children: _pages,
          controller: _tabController,
        ),
        bottomNavigationBar: Material(
          color: Colors.blueGrey[900],
          child: TabBar(
            isScrollable: false,
            indicatorColor: Colors.blueGrey,
            tabs: _tabs,
            controller: _tabController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.shuffle),
          backgroundColor: Colors.blueGrey[700],
        ),
      ),
    );
  }
}
