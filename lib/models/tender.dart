import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

Tender userFromJson(String str) {
  final jsonData = json.decode(str);
  return Tender.fromJson(jsonData);
}

String userToJson(Tender data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Tender {
  String tenderId;
  String title;
  String description;
  String imageUrl;
  String dueDate;
  String dueTime;
  String status;
  String date;

  Tender(
      {this.tenderId,
      this.title,
      this.description,
      this.imageUrl,
      this.dueDate,
      this.dueTime,
      this.status,
      this.date});

  factory Tender.fromJson(Map<String, dynamic> json) => new Tender(
        tenderId: json["tenderId"],
        title: json["title"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        dueDate: json["dueDate"],
        dueTime: json["dueTime"],
        status: json["status"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "tenderId": tenderId,
        "title": title,
        "description": description,
        "imageUrl": imageUrl,
        "dueDate": dueDate,
        "dueTime": dueTime,
        "status": status,
        "date": date
      };

  factory Tender.fromDocument(DocumentSnapshot doc) {
    return Tender.fromJson(doc.data);
  }
}
