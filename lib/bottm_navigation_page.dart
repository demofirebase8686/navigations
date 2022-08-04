import 'package:flutter/material.dart';
import 'package:porvider_navigations/providers/bottom_provider.dart';
import 'package:provider/provider.dart';
import 'providers/bottom_provider.dart';
import 'package:porvider_navigations/screens/first_page.dart';
import 'package:porvider_navigations/screens/second_page.dart';
import 'package:porvider_navigations/screens/third_page.dart';

// ignore: must_be_immutable
class BottomNavPage extends StatelessWidget {
  BottomNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = context.read<BottomProvider>();
    return Scaffold(
        appBar: AppBar(title: const Text("Bottom Navigation Page")),
        body: pages[model.currentIndex],
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  List<BottomNavigationBarItem> bottomItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      label: "Chats",
      icon: Icon(
        Icons.chat,
      ),
    ),
    const BottomNavigationBarItem(
      label: "Messages",
      icon: Icon(
        Icons.message,
      ),
    ),
    const BottomNavigationBarItem(
      label: "Calls",
      icon: Icon(
        Icons.call,
      ),
    ),
  ];

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: bottomItems,
      currentIndex: context.watch<BottomProvider>().currentIndex,
      onTap: (int index) => context.read<BottomProvider>().changeIndex(index),
      elevation: 7,
    );
  }

  List<Widget> pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage()
  ];
}
