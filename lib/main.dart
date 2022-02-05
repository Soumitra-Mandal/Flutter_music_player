import 'package:flutter/material.dart';

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
    Center(
      child: Icon(
        Icons.message,
        size: 40,
      ),
    ),
    Center(
      child: Icon(
        Icons.add,
        size: 40,
      ),
    ),
    Center(
      child: Icon(
        Icons.alarm,
        size: 40,
      ),
    )
  ];

  static const _tabs = <Tab>[
    Tab(
      icon: Icon(Icons.message),
      text: 'Msg',
    ),
    Tab(
      icon: Icon(Icons.add),
      text: 'Add',
    ),
    Tab(
      icon: Icon(Icons.alarm),
      text: 'Alarm',
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
          backgroundColor: Colors.blue[600],
        ),
        body: TabBarView(
          children: _pages,
          controller: _tabController,
        ),
        bottomNavigationBar: Material(
          color: Colors.blue[600],
          child: TabBar(
            tabs: _tabs,
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
