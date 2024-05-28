import 'package:flutter/material.dart';
import 'package:hug_mun/models/chat_model.dart';

class CallListTile extends StatelessWidget {
  const CallListTile({
    super.key,
    required ChatModel model,
    required this.icon,
  }) : _model = model;

  final ChatModel _model;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
      ),
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.surface.withOpacity(0.2),
        leading: CircleAvatar(
          radius: 24.0,
          backgroundImage: NetworkImage(_model.avatarUrl),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              _model.name,
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              _model.datetime,
              style: TextStyle(
                  fontSize: 12.0, color: Theme.of(context).colorScheme.surface),
            ),
          ],
        ),
        trailing: Icon(
          icon,
          size: 18.0,
          color: Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }
}
