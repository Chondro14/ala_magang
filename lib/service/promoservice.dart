part of 'service.dart';



class PromoService {
  static Future<ApiReturnValue<List<Promo>>> getPromos() async {
    await  Future.delayed(Duration(milliseconds: 1000));

    return ApiReturnValue(value: promoListData);
  }
}
