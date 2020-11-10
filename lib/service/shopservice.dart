part of'service.dart';

class ShopService {
  static Future<ApiReturnValue<List<blog>>> getShops() async {
    await Future.delayed(Duration(milliseconds:500));
    return ApiReturnValue(value:shopListData);
  }
}