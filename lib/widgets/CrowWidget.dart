import 'package:flutter/widgets.dart';

import '../generated/assets.dart';

class RavenWidget extends StatefulWidget {
  const RavenWidget({super.key});

  @override
  State<RavenWidget> createState() => _RavenWidgetState();
}

class _RavenWidgetState extends State<RavenWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final img = Image.asset(
      Assets.imagesRaven,
      height: 200,
      width: 200,
    );
    return Container(child: img);
  }
}
