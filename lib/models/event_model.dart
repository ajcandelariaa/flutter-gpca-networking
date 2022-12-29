class EventModel {
  final String id;
  final String name;
  final String date;
  final String venue;
  final String logo;
  final String logoInverted;
  final String htmlLoginText;
  final String htmlAboutText;
  final String htmlCovidText;

  EventModel({
    required this.id,
    required this.name,
    required this.date,
    required this.venue,
    required this.logo,
    required this.logoInverted,
    required this.htmlLoginText,
    required this.htmlAboutText,
    required this.htmlCovidText,
  });
}
