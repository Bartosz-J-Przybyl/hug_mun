import 'package:flutter/material.dart';
import 'package:hug_mun/models/chat_model.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    super.key,
    required ChatModel model,
    required this.icon,
  }) : _model = model;

  final ChatModel _model;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.maxFinite,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: NetworkImage(_model.backgroundUrl), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            tileColor: Theme.of(context).colorScheme.surface.withOpacity(0.2),
            leading: Stack(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
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
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        _model.avatarUrl,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      _model.name,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.surface),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
              ],
            ),
            trailing: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
              ),
              child: Icon(
                icon,
                size: 18.0,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          )
        ],
      ),
    );
  }
}
