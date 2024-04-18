import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/widgets/crow_widget.dart';

void main() {
  testWidgets('CrowWidget has an image', (tester) async {
    'widget is pump to the tester and settled';
    await tester.pumpWidget(const RavenWidget());
    await tester.pumpAndSettle();

    'an image has been settled by path';
    const image = AssetImage(Assets.imagesRaven);

    'image is present in a widget';
    final ravenAsset = find.image(image);

    'raven image asset has been found by tester';
    expect(ravenAsset, findsOneWidget);
  });
}
