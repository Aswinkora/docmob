import 'package:docmob/Screen/appoint.dart';
import 'package:docmob/Screen/home.dart';
import 'package:docmob/Screen/profile.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  // final String user;

  const Tabs({
    super.key,
  });

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          Dashboard(),
          Appoint(),
          TaskHomePage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: TabBar(
          controller: tabController,
          indicatorSize: TabBarIndicatorSize
              .label, // Adjusts the indicator to fit the label
          labelStyle: TextStyle(
            fontSize: 11, // Font size for selected tab
            fontWeight: FontWeight.bold, // Optional: Bold text for selected tab
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 11, // Font size for unselected tabs
          ),
          tabs: [
            Tab(
              icon: Icon(Icons.home, size: 23),
              text: 'DASHBOARD',
            ),
            Tab(
              icon: Icon(Icons.calendar_today, size: 23),
              text: 'APPOINTMENTS',
            ),
            Tab(
              icon: Icon(Icons.people, size: 23),
              text: 'PROFILE',
            ),
          ],
        ),
      ),
    );
  }
}
