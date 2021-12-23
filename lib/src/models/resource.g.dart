// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource _$ResourceFromJson(Map<String, dynamic> json) => Resource(
      id: json['id'] as int?,
      name: json['name'] as String?,
      year: json['year'] as int?,
      color: json['color'] as String?,
      pantone_value: json['pantone_value'] as String?,
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'color': instance.color,
      'pantone_value': instance.pantone_value,
    };
