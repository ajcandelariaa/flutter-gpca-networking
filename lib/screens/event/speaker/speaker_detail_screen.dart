import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:provider/provider.dart';

class SpeakerDetailScreen extends StatelessWidget {
  const SpeakerDetailScreen({Key? key}) : super(key: key);
  static const routeName = "/speaker-detail";

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List<String>;
    final speaker = Provider.of<SpeakerProvider>(context).findById(arg[0], arg[1]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speaker details'),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        children: [],
      )),
    );
  }
}
