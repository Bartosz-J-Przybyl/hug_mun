import 'package:flutter/material.dart';

Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: selected ? Colors.orange : Colors.white.withOpacity(0.4),
      ),
    ),
  );
}