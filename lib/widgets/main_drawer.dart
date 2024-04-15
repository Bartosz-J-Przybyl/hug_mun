import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/widgets/drawer_list_tile.dart';
import 'package:hug_mun/widgets/neumofism.dart';
import 'package:hug_mun/widgets/stack_neumorphism.dart';

const _nickTitle = 'CrowRaven';
const _logTitle = 'CrowRaven@app.en';
const _colorPaletTitle = "Color Palet";
const _settingsTitle = "Settings";
const _logOutTitle = "Log out";
const _accountsTitle = "Account Details";
const _notificationTitle = "Notification";

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground,
              image: const DecorationImage(
                image: AssetImage(
                  Assets.imagesFog,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16),
                  child: Column(
                    children: [
                      Stack(children: [
                        const StackNeumorphism(),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.onBackground,
                              border: Border.all(width: 2),
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        _nickTitle,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                      Text(
                        _logTitle,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 8, top: 8),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Neumorphism(
                            masure: 40,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_night_sharp),
                              color: Theme.of(context).colorScheme.background,
                              iconSize: 29,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.photo),
                        color: Theme.of(context).colorScheme.background,
                        iconSize: 29,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              const DrawerListTile(
                icon: Icons.person_sharp,
                tileText: _accountsTitle,
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.palette,
                  size: 23,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(_colorPaletTitle,
                    style: Theme.of(context).textTheme.titleSmall!),
              ),
              const DrawerListTile(
                tileText: _notificationTitle,
                icon: Icons.notifications,
              ),
              const DrawerListTile(
                tileText: _settingsTitle,
                icon: Icons.settings,
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
        ],
      ),
    );
  }
}
