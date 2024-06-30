import 'package:flutter/material.dart';

class IconContainerWidget extends StatelessWidget {
  const IconContainerWidget(
      {super.key, required this.icon, required this.onPressed});
  final Icon icon;
  final void Function()? onPressed;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        color: Theme.of(context).colorScheme.surface,
        iconSize: 29,
      ),
    );
  }
}
