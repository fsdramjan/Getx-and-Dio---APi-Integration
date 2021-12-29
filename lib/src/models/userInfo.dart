import 'package:json_annotation/json_annotation.dart';

part 'userInfo.g.dart';

@JsonSerializable()
class UserInfo {
  int? id;
  String name;
  // ignore: non_constant_identifier_names
  String job;
  // ignore: non_constant_identifier_names
  String? createdAt;

  UserInfo({
    this.id,
    required this.job,
    required this.name,
    this.createdAt,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
