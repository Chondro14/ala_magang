import 'package:ala_magang/models/models.dart';
import 'package:ala_magang/service/service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shop_state.dart';

class ShopCubit extends Cubit<ShopState> {
  ShopCubit() : super(ShopInitial());
  Future<void> getShop ()async{
    ApiReturnValue<List<Shop>> results=await ShopService.getShops();
    if(results.value!=null){
      emit(ShopLoadSucces(shop: results.value));
    }
    else{
      emit(ShopLoadFailed(message: results.message));
    }
  }
}
