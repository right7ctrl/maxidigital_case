import 'dart:convert';

import 'package:maxidigital_case/app/base/base_model.dart';
import 'package:maxidigital_case/app/init/network_manager.dart';
import 'package:maxidigital_case/model/invite_response_model.dart';
import 'package:maxidigital_case/model/user_item_model.dart';

class InviteViewModel extends BaseModel {
  InviteResponseModel? _res;
  List<UserItemModel> get users => _res?.userList ?? [];

  int get totalEarned => _res?.totalEarned ?? 0;
  int get potentialEarned => _res?.potentialEarned ?? 0;
  int get maximumEarning => _res?.maximumEarning ?? 0;
  int get paidAmount => _res?.paidAmount ?? 0;

  Future<void> fetchData() async {
    toggleLoading(true);

    try {
      await NetworkManager.instance.dio.get('/').then((value) {
        Map<String, dynamic> json = value.data == String ? jsonDecode(value.data) : value.data;
        _res = InviteResponseModel.fromJson(json);
      });
    } catch (e) {
      setError(e.toString());
    }

    toggleLoading(false);
  }
}
