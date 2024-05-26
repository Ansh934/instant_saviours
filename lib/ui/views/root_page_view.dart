import 'package:flutter/material.dart';
import 'package:instant_saviours/ui/views/navigation_destinations/emergency.dart';
import 'package:instant_saviours/ui/views/navigation_destinations/home.dart';
import 'package:instant_saviours/ui/views/navigation_destinations/notifications.dart';
import 'package:material_symbols_icons/symbols.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key, required this.title});
  final String title;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/logo/Instant saviors.png')),
        ),
      ),
      body: <Widget>[
        Home.body(context),
        Emergency.body(context),
        Notifications.body(context),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        // height: 80,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          const NavigationDestination(
            selectedIcon: Icon(
              Symbols.home,
              fill: 1,
              color: Colors.blue,
            ),
            icon: Icon(
              Symbols.home,
            ),
            label: 'Home',
          ),
          const NavigationDestination(
            selectedIcon: Icon(
              Symbols.e911_emergency,
              size: 28,
              fill: 1,
              color: Colors.red,
            ),
            icon: Icon(
              Symbols.e911_emergency,
              size: 28,
            ),
            label: 'Emergency',
          ),
          NavigationDestination(
            selectedIcon: Badge.count(
              count: 1,
              child: const Icon(
                Symbols.notifications,
                size: 28,
                fill: 1,
              ),
            ),
            icon: Badge.count(
              count: 1,
              child: const Icon(
                Symbols.notifications,
                size: 28,
              ),
            ),
            label: 'Notifications',
          ),
          CircleAvatar(
            radius: 24,
            child: IconButton(
              tooltip: 'Profile',
              onPressed: () {
                Navigator.of(context).pushNamed('profile-route');
              },
              icon: const Icon(
                Symbols.person,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
