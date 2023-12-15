import 'dart:convert';

class EventListModel {
  String? eventId;
  String? eventName;
  DateTime? eventDate;

  EventListModel({
    this.eventId,
    this.eventName,
    this.eventDate,
  });

  factory EventListModel.fromRawJson(String str) =>
      EventListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventListModel.fromJson(Map<String, dynamic> json) => EventListModel(
        eventId: json["eventId"],
        eventName: json["eventName"],
        eventDate: json["eventDate"] == null
            ? null
            : DateTime.parse(json["eventDate"]),
      );

  Map<String, dynamic> toJson() => {
        "eventId": eventId,
        "eventName": eventName,
        "eventDate":
            "${eventDate!.year.toString().padLeft(4, '0')}-${eventDate!.month.toString().padLeft(2, '0')}-${eventDate!.day.toString().padLeft(2, '0')}",
      };
}
