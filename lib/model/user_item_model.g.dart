// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserItemModel _$UserItemModelFromJson(Map<String, dynamic> json) =>
    UserItemModel(
      json['firstName'] as String?,
      json['lastName'] as String?,
      json['totalEarned'] as int?,
      json['date'] as int?,
      json['isEarned'] as bool?,
    );

Map<String, dynamic> _$UserItemModelToJson(UserItemModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'totalEarned': instance.totalEarned,
      'date': instance.date,
      'isEarned': instance.isEarned,
    };
