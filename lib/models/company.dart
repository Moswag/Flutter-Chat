import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

Company userFromJson(String str) {
  final jsonData = json.decode(str);
  return Company.fromJson(jsonData);
}

String userToJson(Company data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Company {
  String companyId;
  String name;
  String mission;
  String logoUrl;

  Company({this.companyId, this.name, this.mission, this.logoUrl});

  factory Company.fromJson(Map<String, dynamic> json) => new Company(
      companyId: json["companyId"],
      name: json["name"],
      mission: json["mission"],
      logoUrl: json["logoUrl"]);

  Map<String, dynamic> toJson() => {
        "companyId": companyId,
        "name": name,
        "mission": mission,
        "logoUrl": logoUrl
      };

  factory Company.fromDocument(DocumentSnapshot doc) {
    return Company.fromJson(doc.data);
  }
}
