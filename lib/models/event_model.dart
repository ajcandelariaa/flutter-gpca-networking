import 'dart:convert';

List<EventModel> eventModelFromJson(String str) =>
    List<EventModel>.from(json.decode(str).map((x) => EventModel.fromJson(x)));

// String eventModelToJson(List<EventModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EventModel {
  final String eventId;
  final String eventName;
  final String eventDate;
  final String eventVenue;
  final String eventLogo;

  EventModel({
    required this.eventId,
    required this.eventName,
    required this.eventDate,
    required this.eventVenue,
    required this.eventLogo,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        eventId: json["eventId"],
        eventName: json["eventName"],
        eventDate: json["eventDate"],
        eventVenue: json["eventVenue"],
        eventLogo: json["eventLogo"],
      );

  Map<String, dynamic> toJson() => {
        "eventId": eventId,
        "eventName": eventName,
        "eventDate": eventDate,
        "eventVenue": eventVenue,
        "eventLogo": eventLogo,
      };
}
