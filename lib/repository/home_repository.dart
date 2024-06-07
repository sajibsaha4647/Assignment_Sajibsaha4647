import 'package:flutter/services.dart';

import '../constants/assets.dart';
import '../data/network/base_api_service.dart';
import '../data/network/network_api_service.dart';
import '../model/response_model/filter_list_model.dart';
import '../model/response_model/product_list_response_model.dart';

class HomeRepository {

  BaseApiServices baseApiService = NetworkService();


  Future<List<ProductListResponse>> productList() async {
    final String response = await rootBundle.loadString(AppAssets.productJson);
    print(response);
    print("response here is this");
    return  productListResponseFromMap(response);
  }

  Future<List<FilterList>> filterList() async {
    final String response = await rootBundle.loadString(AppAssets.filterJson);
    print(response);
    print("response here is this");
    return  filterListFromMap(response);
  }

}