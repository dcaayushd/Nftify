import 'package:flutter/material.dart';
import 'package:nftify/components/app_bar.dart';
import 'package:nftify/components/bottom_bar.dart';
import 'package:nftify/components/tab_bar.dart';
import 'package:nftify/tabs/recent_tab.dart';
import 'package:nftify/tabs/top_tab.dart';
import 'package:nftify/tabs/trending_tab.dart';
import 'package:nftify/theme/const.dart';
import 'package:nftify/utils/glass_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  // user tapped searched button
  void searchButtonTapped() {}

  // tab options
  List tabOption = [
    ["Recent", const RecentTab()],
    ["Trending", const TrendingTab()],
    ["Top", const TopTab()],
  ];

  // bottom bar navigation
  int _currentButtonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentButtonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentButtonIndex,
            onTap: _handleIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            // title + search button
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 690,
              child: MyTabBar(
                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
