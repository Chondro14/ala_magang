part of'service.dart';

class FoodService {
  static Future<ApiReturnValue<List<Foods>>> getFoods()async{
    await Future.delayed(Duration(microseconds: 500));
    return ApiReturnValue(value: foodsListData);
  }
}