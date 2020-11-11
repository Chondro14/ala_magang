part of 'service.dart';

class PromoService {
  static Future<ApiReturnValue<List<Promo>>> getPromo() async {
    await Future.delayed(Duration(milliseconds: 500));
    return ApiReturnValue(value: promoListData);
  }
}
