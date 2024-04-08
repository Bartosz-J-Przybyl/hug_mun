import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/widgets/light_cont.dart';
import 'package:hug_mun/widgets/shadow_cont.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const _craTitle = 'Cra!!!';
    const _colorPaletTitle = "Color Palet";
    const _settingsTitle = "Settings";
    const _logOutTitle = "Log out";

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground,
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: ShadowClipper(),
                      child: const ShadowContainer(
                        masure: 100,
                      ),
                    ),
                    ClipPath(
                      clipper: HighlightClipper(),
                      child: const LightContainer(
                        masure: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          Assets.imagesCrow,
                          height: 100,
                          color: Theme.of(context).colorScheme.background,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  _craTitle,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.background,
                      ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                ExpansionTile(
                  leading: Icon(
                    Icons.palette,
                    size: 23,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  title: Text(_colorPaletTitle,
                      style: Theme.of(context).textTheme.titleSmall!),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 23,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  title: Text(_settingsTitle,
                      style: Theme.of(context).textTheme.titleSmall!),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 23,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  title: Text(_logOutTitle,
                      style: Theme.of(context).textTheme.titleSmall!),
                  onTap: () {
                    {
                      //  TODO https://huginn-muninn.atlassian.net/browse/HM-6
                      // FirebaseAuth.instance.signOut().then(
                      //   (value) {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const MyApp(),
                      //       ),
                      //     );
                      //   },
                      // );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
