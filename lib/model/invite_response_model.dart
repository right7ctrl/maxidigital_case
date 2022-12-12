import 'package:json_annotation/json_annotation.dart';
import 'package:maxidigital_case/model/user_item_model.dart';

part 'invite_response_model.g.dart';

@JsonSerializable()
class InviteResponseModel {
  
  final List<UserItemModel>? userList;
  final int? totalEarned, potentialEarned, maximumEarning, paidAmount;

  factory InviteResponseModel.fromJson(Map<String, dynamic> json) => _$InviteResponseModelFromJson(json);

  InviteResponseModel(this.userList, this.totalEarned, this.potentialEarned, this.maximumEarning, this.paidAmount);

  Map<String, dynamic> toJson() => _$InviteResponseModelToJson(this);
}
