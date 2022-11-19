import 'package:flutter/material.dart';
import 'package:gpca_networking/constants/api_constants.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EventProvider with ChangeNotifier {
  final List<EventModel> _events = [
    EventModel(
      id: '1',
      name: 'Supply Chain Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1 2',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      loginHTMLData: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at forumregistration@gpca.org.ae.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
    ),
    EventModel(
      id: '2',
      name: 'Plastics Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      loginHTMLData: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at forumregistration@gpca.org.ae.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
    ),
    EventModel(
      id: '3',
      name: 'Agri-Nutrients Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      loginHTMLData: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at forumregistration@gpca.org.ae.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
    ),
    EventModel(
      id: '4',
      name: 'Research & Innovation Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      loginHTMLData: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at forumregistration@gpca.org.ae.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
    ),
    EventModel(
      id: '5',
      name: 'Responsible Care Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      loginHTMLData: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at forumregistration@gpca.org.ae.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
    ),
    EventModel(
      id: '6',
      name: 'GPCA Annual Forum',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      loginHTMLData: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at forumregistration@gpca.org.ae.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
    ),
  ];

  List<EventModel> get events {
    return [..._events];
  }

  EventModel findById(String id) {
    return _events.firstWhere((event) => event.id == id);
  }

  // Future<void> getEvents() async {
  //   try {
  //     final url =
  //         Uri.parse(ApiConstants.baseUrl + ApiConstants.eventsListEndPoint);
  //     final response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       final extractedData = json.decode(response.body);
  //       final List<EventModel> loadedEvents = [];
  //       for (var u in extractedData) {
  //         EventModel eventT = EventModel(
  //               eventId: u['eventId'],
  //               eventName: u['eventName'],
  //               eventDate: u['eventDate'],
  //               eventVenue: u['eventVenue'],
  //               eventLogo: u['eventLogo']);
  //               loadedEvents.add(eventT);
  //       }
  //       _events = loadedEvents;
  //       notifyListeners();
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }
}
