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
    return ListTile(
      leading: Icon(
        icon,
        size: 23,
        color: Theme.of(context).iconTheme.color,
      ),
      title: Text(tileText, style: Theme.of(context).textTheme.titleSmall!),
      onTap: () {},
    );
  }
}
