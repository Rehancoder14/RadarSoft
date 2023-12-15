import 'dart:convert';

class EventDetail {
  String? id;
  String? eventName;
  String? categoryMaster;
  String? startDate;
  String? endDate;
  String? customBooking;
  String? generalInfo;
  dynamic amount;
  String? location;
  String? venue;
  String? organiserMaster;
  String? organiserName;
  String? locationMapLink;
  String? bookingMaxLimit;
  String? description;
  String? eventBanner;
  String? createdDate;
  String? updatedDate;
  int? isActive;
  int? eventCount;

  EventDetail({
    this.id,
    this.eventName,
    this.categoryMaster,
    this.startDate,
    this.endDate,
    this.customBooking,
    this.generalInfo,
    this.amount,
    this.location,
    this.venue,
    this.organiserMaster,
    this.organiserName,
    this.locationMapLink,
    this.bookingMaxLimit,
    this.description,
    this.eventBanner,
    this.createdDate,
    this.updatedDate,
    this.isActive,
    this.eventCount,
  });

  factory EventDetail.fromRawJson(String str) =>
      EventDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventDetail.fromJson(Map<String, dynamic> json) => EventDetail(
        id: json["_id"],
        eventName: json["eventName"],
        categoryMaster: json["categoryMaster"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        customBooking: json["customBooking"],
        generalInfo: json["generalInfo"],
        amount: json["amount"],
        location: json["location"],
        venue: json["venue"],
        organiserMaster: json["organiserMaster"],
        organiserName: json["organiserName"],
        locationMapLink: json["locationMapLink"],
        bookingMaxLimit: json["bookingMaxLimit"],
        description: json["description"],
        eventBanner: json["eventBanner"],
        createdDate: json["createdDate"],
        updatedDate: json["updatedDate"],
        isActive: json["isActive"],
        eventCount: json["eventCount"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "eventName": eventName,
        "categoryMaster": categoryMaster,
        "startDate": startDate,
        "endDate": endDate,
        "customBooking": customBooking,
        "generalInfo": generalInfo,
        "amount": amount,
        "location": location,
        "venue": venue,
        "organiserMaster": organiserMaster,
        "organiserName": organiserName,
        "locationMapLink": locationMapLink,
        "bookingMaxLimit": bookingMaxLimit,
        "description": description,
        "eventBanner": eventBanner,
        "createdDate": createdDate,
        "updatedDate": updatedDate,
        "isActive": isActive,
        "eventCount": eventCount,
      };
}
