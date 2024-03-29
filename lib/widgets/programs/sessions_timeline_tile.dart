import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gpca_networking/screens/event/program/session_detail_screen.dart';
import 'package:timeline_tile/timeline_tile.dart';

class SessionsTimelineTile extends StatelessWidget {
  String sessionId, sessionStartTime, sessionEndTime, sessionTitle, sessionDescription;
  bool sessionIsFirst, sessionIsLast;
  double sessionIndicatorXY;

  SessionsTimelineTile({
    required this.sessionId,
    required this.sessionStartTime,
    required this.sessionEndTime,
    required this.sessionTitle,
    required this.sessionDescription,
    required this.sessionIsFirst,
    required this.sessionIsLast,
    required this.sessionIndicatorXY,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final linexy = screenWidth <= 600 ? 0.18 : 0.1;
    return TimelineTile(
      indicatorStyle: IndicatorStyle(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Theme.of(context).primaryColor,
        width: 10,
        height: 10,
        indicatorXY: sessionIndicatorXY,
      ),
      afterLineStyle: LineStyle(color: Colors.grey.shade300, thickness: 1.5),
      beforeLineStyle: LineStyle(color: Colors.grey.shade300, thickness: 1.5),
      axis: TimelineAxis.vertical,
      alignment: TimelineAlign.manual,
      lineXY: linexy,
      isLast: sessionIsLast,
      isFirst: sessionIsFirst,
      startChild: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              sessionStartTime,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Text(sessionEndTime),
        ],
      ),
      endChild: InkWell(
        onTap: () => Navigator.of(context).pushNamed(SessionDetailScreen.routeName, arguments: sessionId),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  left: 0,
                  child: Transform.rotate(
                    angle: 30,
                    child: ClipPath(
                      clipper: _Triangle(),
                      child: Container(
                        color: const Color.fromARGB(255, 240, 240, 240),
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sessionTitle,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            // if (sessionDescription != "")
                            //   const SizedBox(
                            //     height: 5,
                            //   ),
                            // if (sessionDescription != "")
                            //   Text(
                            //     sessionDescription,
                            //     maxLines: 1,
                            //     overflow: TextOverflow.ellipsis,
                            //     style: TextStyle(color: Colors.grey[800]),
                            //   ),
                            SizedBox(height: 3,),
                            // Row(
                            //   children: const [
                            //     CircleAvatar(
                            //       backgroundImage: AssetImage(
                            //           'assets/images/sample_user.jpeg'),
                            //       radius: 8,
                            //     ),
                            //     SizedBox(width: 2,),
                            //     CircleAvatar(
                            //       backgroundImage: AssetImage(
                            //           'assets/images/sample_agenda_banner.PNG'),
                            //       radius: 8,
                            //     ),
                            //     SizedBox(width: 2,),
                            //     CircleAvatar(
                            //       backgroundImage: AssetImage(
                            //           'assets/images/sample_user.jpeg'),
                            //       radius: 8,
                            //     ),
                            //     SizedBox(width: 2,),
                            //     CircleAvatar(
                            //       backgroundImage: AssetImage(
                            //           'assets/images/sc_banner.jpg'),
                            //       radius: 8,
                            //     ),
                            //     SizedBox(width: 2,),
                            //     CircleAvatar(
                            //       backgroundImage: AssetImage(
                            //           'assets/images/sample_user.jpeg'),
                            //       radius: 8,
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
