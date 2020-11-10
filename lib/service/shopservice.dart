part of'service.dart';

class ShopService {
  static Future<ApiReturnValue<List<Shop>>> getShops() async {
    await Future.delayed(Duration(milliseconds:500));
    return ApiReturnValue(value:shopListData);
  }
}