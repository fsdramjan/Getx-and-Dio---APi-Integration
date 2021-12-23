import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
  int? id;
  String? name;
  int? year;
  String? color;
  // ignore: non_constant_identifier_names
  String? pantone_value;

  Resource({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    // ignore: non_constant_identifier_names
    required this.pantone_value,
  });

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceToJson(this);

}
