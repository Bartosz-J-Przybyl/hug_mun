import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/models/chat_model.dart';
import 'package:hug_mun/models/dummy_data.dart';

import 'package:hug_mun/widgets/call_list_tile.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background2),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: DummyData.length,
                (BuildContext context, int index) {
                  ChatModel model = DummyData[index];
                  return Expanded(
                    child: Column(
                      children: <Widget>[
                        const Divider(
                          height: 12.0,
                        ),
                        CallListTile(
                          model: model,
                          icon: Icons.call,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: SizedBox(
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
