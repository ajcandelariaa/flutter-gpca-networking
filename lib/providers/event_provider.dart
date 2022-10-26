import 'package:flutter/cupertino.dart';
import 'package:gpca_networking/constants/api_constants.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EventProvider with ChangeNotifier {
  List<EventModel> _events = [];

  List<EventModel> get events {
    return [..._events];
  }

  Future<void> getEvents() async {
    try {
      final url =
          Uri.parse(ApiConstants.baseUrl + ApiConstants.eventsListEndPoint);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final extractedData = json.decode(response.body);
        final List<EventModel> loadedEvents = [];
        for (var u in extractedData) {
          EventModel eventT = EventModel(
                eventId: u['eventId'],
                eventName: u['eventName'],
                eventDate: u['eventDate'],
                eventVenue: u['eventVenue'],
                eventLogo: u['eventLogo']);
                loadedEvents.add(eventT);
        }
        _events = loadedEvents;
        notifyListeners();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
