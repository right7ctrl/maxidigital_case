// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteResponseModel _$InviteResponseModelFromJson(Map<String, dynamic> json) =>
    InviteResponseModel(
      (json['userList'] as List<dynamic>?)
          ?.map((e) => UserItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalEarned'] as int?,
      json['potentialEarned'] as int?,
      json['maximumEarning'] as int?,
      json['paidAmount'] as int?,
    );

Map<String, dynamic> _$InviteResponseModelToJson(
        InviteResponseModel instance) =>
    <String, dynamic>{
      'userList': instance.userList,
      'totalEarned': instance.totalEarned,
      'potentialEarned': instance.potentialEarned,
      'maximumEarning': instance.maximumEarning,
      'paidAmount': instance.paidAmount,
    };
