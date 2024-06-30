import 'package:flutter/material.dart';
import 'package:hug_mun/models/chat_model.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
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
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 24.0,
          backgroundImage: NetworkImage(_model.avatarUrl),
        ),
        title: Row(
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
        subtitle: Text(
          _model.message,
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
        trailing: Icon(
          icon,
          size: 14.0,
          color: Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }
}
