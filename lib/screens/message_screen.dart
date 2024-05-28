import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/models/chat_model.dart';
import 'package:hug_mun/widgets/chat_list_tile.dart';
import 'package:hug_mun/widgets/recent_list_tile.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({
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
            SliverToBoxAdapter(
              child: RecentTile(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: ChatModel.dummyData.length,
                (BuildContext context, int index) {
                  ChatModel model = ChatModel.dummyData[index];
                  return Expanded(
                    child: Column(
                      children: <Widget>[
                        const Divider(
                          height: 12.0,
                        ),
                        ChatListTile(
                          model: model,
                          icon: Icons.arrow_forward,
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
