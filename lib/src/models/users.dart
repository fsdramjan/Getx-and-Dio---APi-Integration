import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? email;
  // ignore: non_constant_identifier_names
  String? first_name;
  // ignore: non_constant_identifier_names
  String? last_name;
  String? avatar;

  User({
    required this.id,
    required this.email,
    // ignore: non_constant_identifier_names
    required this.first_name,
    // ignore: non_constant_identifier_names
    required this.last_name,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);


}
