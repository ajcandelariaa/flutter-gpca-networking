import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';

class FloorPlanScreen extends StatelessWidget {
  const FloorPlanScreen({Key? key}) : super(key: key);
  static const routeName = '/floor-plan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floor plan'),
        centerTitle: true,
        actions: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(right: 13),
              child: const Icon(
                FontAwesomeIcons.download,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: PhotoView(
          initialScale: PhotoViewComputedScale.covered,
          basePosition: Alignment.topCenter,
          backgroundDecoration: const BoxDecoration(
            color: Colors.white,
          ),
          imageProvider: const AssetImage(
            'assets/images/sample_floor_plan.jpg',
          ),
        ),
      ),
    );
  }
}
