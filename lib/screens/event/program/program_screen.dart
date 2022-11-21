import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/program_tile.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({Key? key}) : super(key: key);
  static const routeName = '/program';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ProgramTile(),
              SizedBox(
                height: 15,
              ),
              ProgramTile(),
              SizedBox(
                height: 15,
              ),
              ProgramTile(),
            ],
          ),
        ),
      ),
    );
  }
}
