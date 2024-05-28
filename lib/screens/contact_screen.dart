import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/models/chat_model.dart';
import 'package:hug_mun/widgets/contact_tile.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({
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
                childCount: ChatModel.dummyData.length,
                (BuildContext context, int index) {
                  ChatModel model = ChatModel.dummyData[index];
                  return Expanded(
                    child: Column(
                      children: <Widget>[
                        Divider(
                          height: 12.0,
                        ),
                        ContactTile(
                          icon: Icons.more_horiz,
                          model: model,
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
