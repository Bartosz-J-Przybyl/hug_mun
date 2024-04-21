import 'package:flutter/material.dart';

class IconContainerWidget extends StatelessWidget {
  const IconContainerWidget({
    super.key,
    required this.icon,
  });
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        color: Theme.of(context).colorScheme.surface,
        iconSize: 29,
      ),
    );
  }
}
