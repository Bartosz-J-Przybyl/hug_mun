import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hug_mun/generated/assets.dart';
import 'package:hug_mun/widgets/CrowWidget.dart';

void main() {
  testWidgets('CrowWidget has an image', (tester) async {
    given: 'widget is pump to the tester and settled';
    await tester.pumpWidget(const RavenWidget());
    await tester.pumpAndSettle();

    and: 'an image has been settled by path';
    const image = AssetImage(Assets.imagesRaven);

    when: 'image is present in a widget';
    final ravenAsset = find.image(image);

    then: 'raven image asset has been found by tester';
    expect(ravenAsset, findsOneWidget);
  });
}
