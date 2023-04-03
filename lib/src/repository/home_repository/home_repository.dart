import 'dart:ui';

import '../../data/network/network_api_services.dart';
import '../../model/home/user_list_model.dart';
import '../../res/app_url/app_url.dart';




class HomeRepository {

  final _apiService  = NetworkApiServices() ;

  Future<UserListModel> userListApi() async{
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response) ;
  }


}