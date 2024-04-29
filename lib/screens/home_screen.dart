import 'package:flutter/material.dart';

import 'package:hug_mun/assets/assets.dart';

import 'package:hug_mun/models/nav_model.dart';
import 'package:hug_mun/screens/tab_screen.dart';
import 'package:hug_mun/widgets/main_drawer.dart';
import 'package:hug_mun/widgets/nav_bar_widget.dart';

const _appBarTitle = "Welcome";
const _craTitle = 'Cra!!!';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Route route() =>
      MaterialPageRoute<void>(builder: (ctx) => const HomeScreen());

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final messageNavKey = GlobalKey<NavigatorState>();

  final friendNavKey = GlobalKey<NavigatorState>();

  final gropupsNavKey = GlobalKey<NavigatorState>();

  final callNavKey = GlobalKey<NavigatorState>();

  int selectedTab = 1;

  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(page: const TabPage(tab: 1), navKey: messageNavKey),
      NavModel(page: const TabPage(tab: 2), navKey: friendNavKey),
      NavModel(page: const TabPage(tab: 3), navKey: gropupsNavKey),
      NavModel(page: const TabPage(tab: 4), navKey: callNavKey),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
          items[selectedTab].navKey.currentState?.pop();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.surface),
          title: const Text(_appBarTitle),
          actions: <Widget>[
            IconButton(
              icon: Image.asset(
                Assets.imagesCrow,
                width: 60,
                color: Colors.white,
                fit: BoxFit.cover,
              ),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(bottom: 100.0),
                  duration: Duration(seconds: 1),
                  content: Text(
                    _craTitle,
                    textAlign: TextAlign.center,
                    selectionColor: Colors.amber,
                  ),
                  backgroundColor: Colors.black,
                ));
              },
            ),
          ],
          backgroundColor: Theme.of(context).colorScheme.onSurface,
        ),
        body: Stack(
          children: [
            IndexedStack(
              index: selectedTab,
              children: items
                  .map(
                    (page) => Navigator(
                      key: page.navKey,
                      onGenerateInitialRoutes: (navigator, initialRoute) {
                        return [
                          MaterialPageRoute(
                            builder: (context) => page.page,
                          ),
                        ];
                      },
                    ),
                  )
                  .toList(),
            ),
            NavBar(
              pageIndex: selectedTab,
              onTap: (index) {
                if (index == selectedTab) {
                  items[index]
                      .navKey
                      .currentState
                      ?.popUntil((route) => route.isFirst);
                } else {
                  setState(() {
                    selectedTab = index;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
