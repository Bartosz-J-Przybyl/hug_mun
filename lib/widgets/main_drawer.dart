import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:hug_mun/services/secure_store_service.dart';
import 'package:hug_mun/widgets/drawer_list_tile.dart';
import 'package:hug_mun/widgets/icon_container_widget.dart';
import 'package:hug_mun/widgets/profile_text_widget.dart';

const _colorPaletTitle = "Color Palet";
const _settingsTitle = "Settings";
const _logOutTitle = "Log out";
const _accountsTitle = "Account Details";
const _notificationTitle = "Notification";

extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      final offset = Offset(translation.x, translation.y);
      return renderObject!.paintBounds.shift(offset);
    } else {
      return null;
    }
  }
}

class MainDrawer extends StatefulWidget {
  const MainDrawer({
    super.key,
    this.getThemeIconOffset,
    this.onInit,
  });

  final void Function(Offset)? getThemeIconOffset;
  final dynamic Function(GlobalKey)? onInit;

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final _secureStoreService = GetIt.instance.get<SecureStoreService>();
  final fKey = GlobalKey();
  bool click = false;

  void getThemeIconOffset() {
    final rect = fKey.globalPaintBounds!;
    final xMiddle = (rect.right - rect.left) / 2;
    final yMiddle = (rect.bottom - rect.top) / 2;
    widget.getThemeIconOffset!(
        Offset(rect.right - xMiddle, rect.bottom - yMiddle));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              image: const DecorationImage(
                image: AssetImage(
                  Assets.background3,
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
                                color: Theme.of(context).colorScheme.surface,
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.7),
                                border: Border.all(
                                  width: 3,
                                  color: Theme.of(context).colorScheme.surface,
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 45,
                  ),
                  child: Column(
                    children: [
                      ThemeModeIcon(
                        key: fKey,
                        getThemeIconOffset: () {
                          getThemeIconOffset();
                          setState(() {
                            click = !click;
                            Object currentTheme = !click ? "dark" : "light";
                            _secureStoreService.writeValue(
                                currentTheme, "theme");
                          });
                        },
                        icon: Icon((click == false)
                            ? Icons.light_mode_rounded
                            : Icons.dark_mode_rounded),
                      ),
                      const SizedBox(
                        height: 130,
                      ),
                      IconContainerWidget(
                        icon: const Icon(Icons.photo),
                        onPressed: () {},
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
                  color: Theme.of(context).colorScheme.surface,
                ),
                title: Text(_logOutTitle,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.surface)),
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

class ThemeModeIcon extends StatelessWidget {
  const ThemeModeIcon({
    super.key,
    this.getThemeIconOffset,
    required this.icon,
  });

  final void Function()? getThemeIconOffset;
  final Icon icon;

  @override
  Widget build(BuildContext context) =>
      IconContainerWidget(icon: icon, onPressed: getThemeIconOffset);
}
