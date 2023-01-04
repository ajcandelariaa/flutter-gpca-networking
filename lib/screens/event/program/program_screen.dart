import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/program_provider.dart';
import 'package:gpca_networking/widgets/programs/program_tile.dart';
import 'package:provider/provider.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({Key? key}) : super(key: key);
  static const routeName = '/program';

  @override
  Widget build(BuildContext context) {
    final programs = Provider.of<ProgramProvider>(context).getPrograms("1");
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
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ProgramTile(
              id: programs[index].id,
              date: programs[index].date,
              name: programs[index].name,
              backgroundPicture: programs[index].backgroundPicture,
            );
          },
          itemCount: programs.length,
        ),
      ),
    );
  }
}
