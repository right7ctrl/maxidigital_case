import 'package:json_annotation/json_annotation.dart';

part 'user_item_model.g.dart';

@JsonSerializable()
class UserItemModel {
  final String? firstName, lastName;
  final int? totalEarned, date;
  final bool? isEarned;

  String get dateString {
    if (date == null) return "";
    return DateTime.fromMillisecondsSinceEpoch(date!).toIso8601String();
  }

  String get fullName {
    return '${firstName ?? ''} ${lastName ?? ''}';
  }

  String get earningTotal {
    if (!(isEarned ?? false)) return '0 €';
    return '+${totalEarned ?? 0} €';
  }

  UserItemModel(this.firstName, this.lastName, this.totalEarned, this.date, this.isEarned);

  factory UserItemModel.fromJson(Map<String, dynamic> json) => _$UserItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserItemModelToJson(this);
}
