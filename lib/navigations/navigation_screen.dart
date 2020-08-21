import 'package:flutter/material.dart';
import "package:chat_app/screens/screen.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import "package:chat_app/widget/widget.dart";

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screen = [
    ChatScreen(),
    StoriesScreen(),
    CameraScreen(),
    ContactScreen(),
    SettingScreen(),
  ];

  final List<IconData> _icons = [
    Icons.chat,
    MdiIcons.heart,
    MdiIcons.camera,
    MdiIcons.contacts,
    Icons.settings,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screen,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
