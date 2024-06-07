// To parse this JSON data, do
//
//     final filterList = filterListFromMap(jsonString);

import 'dart:convert';

List<FilterList> filterListFromMap(String str) => List<FilterList>.from(json.decode(str).map((x) => FilterList.fromMap(x)));

String filterListToMap(List<FilterList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class FilterList {
  String? name;
  bool? ischecked;

  FilterList({
    this.name,
    this.ischecked,
  });

  FilterList copyWith({
    String? name,
    bool? ischecked,
  }) =>
      FilterList(
        name: name ?? this.name,
        ischecked: ischecked ?? this.ischecked,
      );

  factory FilterList.fromMap(Map<String, dynamic> json) => FilterList(
    name: json["name"],
    ischecked: json["ischecked"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "ischecked": ischecked,
  };
}
