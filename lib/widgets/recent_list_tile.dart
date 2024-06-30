import 'package:flutter/material.dart';
import 'package:hug_mun/models/chat_model.dart';
import 'package:hug_mun/models/dummy_data.dart';

class RecentTile extends StatelessWidget {
  const RecentTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
      margin: EdgeInsets.all(8),
      elevation: 0,
      child: SizedBox(
        height: 125,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Recent",
                style: TextStyle(color: Theme.of(context).colorScheme.surface),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyData.length,
                itemBuilder: (BuildContext context, int index) {
                  ChatModel model = DummyData[index];
                  return Padding(
                    padding: EdgeInsets.only(top: 0, left: 8, right: 8),
                    child: SizedBox(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 24.0,
                            backgroundImage: NetworkImage(model.avatarUrl),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 5, right: 5),
                              child: Text(
                                model.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    color:
                                        Theme.of(context).colorScheme.surface),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
