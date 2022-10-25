import 'package:flutter/cupertino.dart';
import 'package:gpca_networking/constants/api_constants.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:http/http.dart' as http;

class ApiServce{
  Future<List<EventModel>?> getEvents() async {
    try {
      final url = Uri.parse(ApiConstants.baseUrl + ApiConstants.eventsListEndPoint);
      final response = await http.get(url);
      if(response.statusCode == 200) {
        List<EventModel> _model = eventModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}