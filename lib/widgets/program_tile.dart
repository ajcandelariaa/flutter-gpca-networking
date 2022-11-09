import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/program/program_detail_screen.dart';

class ProgramTile extends StatelessWidget {
  const ProgramTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(ProgramDetailScreen.routeName),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Container(
              color: Colors.black,
              child: Opacity(
                opacity: 0.25,
                child: Image.asset(
                  'assets/images/sample_agenda_banner.PNG',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 50,
            right: 50,
            child: Column(
              children: const [
                Text(
                  "Annual GPCA Forum",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 2,),
                Text(
                  "December 05 - 06, 2022",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          // ClipRRect(
          //   borderRadius: const BorderRadius.all(Radius.circular(20)),
          //   child: Image.asset(
          //     'assets/images/sample_agenda_banner.PNG',
          //     width: double.infinity,
          //     fit: BoxFit.cover,
          //   ),
          // )
        ],
      ),
    );
  }
}
