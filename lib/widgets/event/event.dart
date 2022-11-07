import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/theme_provider.dart';
import 'package:gpca_networking/screens/main/login_screen.dart';
import 'package:provider/provider.dart';

class Event extends StatelessWidget {
  final String eventId;
  final String eventName;
  final String eventDate;
  final String eventVenue;
  final String eventLogo;

  Event({
    required this.eventId,
    required this.eventName,
    required this.eventDate,
    required this.eventVenue,
    required this.eventLogo,
  });

  void _redirectToLogin(ctx) {
    Provider.of<ThemeProvider>(ctx, listen: false).toggleThemeData('sc');
    Navigator.of(ctx).pushNamed(LoginScreen.routeName, arguments: eventId);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _redirectToLogin(context),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    eventLogo,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  width: 0.5,
                  height: 70.0,
                  color: Color.fromARGB(255, 179, 179, 179),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.ltr,
                    children: [
                      Text(
                        eventName.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.date_range_outlined,
                            size: 14,
                            color: Color.fromARGB(255, 129, 129, 129),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            eventDate,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.place_outlined,
                            size: 14,
                            color: Color.fromARGB(255, 129, 129, 129),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            eventVenue,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
