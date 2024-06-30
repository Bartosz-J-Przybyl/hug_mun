import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.tileText,
    required this.icon,
  });

  final String tileText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        icon,
        size: 23,
        color: Theme.of(context).colorScheme.surface,
      ),
      title: Text(
        tileText,
        style: TextStyle(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}
