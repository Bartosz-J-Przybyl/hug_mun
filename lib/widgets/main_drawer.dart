import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hug_mun/main.dart';
import 'package:hug_mun/widgets/light_cont.dart';
import 'package:hug_mun/widgets/shadow_cont.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
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
                      child: ShadowContainer(
                        masure: 100,
                      ),
                    ),
                    ClipPath(
                      clipper: HighlightClipper(),
                      child: LightContainer(
                        masure: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          "lib/assets/images/kruk.png",
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
                  "Kra!",
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
                  title: Text("Color Palet",
                      style: Theme.of(context).textTheme.titleSmall!),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 23,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  title: Text("Setings",
                      style: Theme.of(context).textTheme.titleSmall!),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 23,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  title: Text("Log out",
                      style: Theme.of(context).textTheme.titleSmall!),
                  onTap: () {
                    {
                      FirebaseAuth.instance.signOut().then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()));
                      });
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
