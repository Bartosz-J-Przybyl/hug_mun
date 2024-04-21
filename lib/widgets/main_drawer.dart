import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:hug_mun/widgets/drawer_list_tile.dart';
import 'package:hug_mun/widgets/icon_container_widget.dart';
import 'package:hug_mun/widgets/profile_text_widget.dart';

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
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              image: const DecorationImage(
                image: AssetImage(
                  Assets.background2,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 65,
                    right: 10,
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.9),
                                  offset: const Offset(0, 10),
                                ),
                              ],
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  Assets.background,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.onSurface,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.white,
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                                iconSize: 20,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        buildWhen: (previous, current) =>
                            previous.user != current.user,
                        builder: (context, state) {
                          final username = "${state.user.username}";
                          final email = "${state.user.email}";
                          return Column(
                            children: [
                              ProfileTextWidget(
                                text: username,
                                size: 16,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              ProfileTextWidget(
                                text: email,
                                size: 12,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   width: 80,
                // ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 45,
                  ),
                  child: Column(
                    children: [
                      IconContainerWidget(
                        icon: Icon(Icons.mode_night_sharp),
                      ),
                      SizedBox(
                        height: 130,
                      ),
                      IconContainerWidget(
                        icon: Icon(Icons.photo),
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
              const DrawerListTile(
                icon: Icons.palette,
                tileText: _colorPaletTitle,
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
                onTap: () async {
                  context.read<AuthenticationBloc>().add(
                        AuthenticationLogoutRequested(),
                      );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
