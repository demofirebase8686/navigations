import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:porvider_navigations/screens/first_page.dart';
import 'package:porvider_navigations/screens/second_page.dart';
import 'package:porvider_navigations/screens/third_page.dart';
import 'package:porvider_navigations/widgets/drawers.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({Key? key}) : super(key: key);

  @override
  State<TabHomePage> createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title: const Text("Tab bar Homepage"),
          bottom: TabBar(
            controller: controller,
            tabs: const [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Calls",
              ),
              Tab(
                text: "Status",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [const FirstPage(), const SecondPage(), const ThirdPage()],
        ),
      ),
    );
  }

  List<Tab> tabsItems = [];

  Widget tabBar() {
    return TabBar(
      tabs: tabsItems,
      dragStartBehavior: DragStartBehavior.down,
      enableFeedback: true,
      isScrollable: false,
    );
  }
}
