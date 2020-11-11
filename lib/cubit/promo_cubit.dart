import 'package:ala_magang/models/models.dart';
import 'package:ala_magang/service/service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


part 'promo_state.dart';

class PromoCubit extends Cubit<PromoState> {
  PromoCubit() : super(PromoInitial());
  Future<void> getPromoState()async{
    ApiReturnValue<List<Promo>> results=await PromoService.getPromos();
    print(results.value.toString());

    if(results.value!=null){
      emit(PromoLoaded(results.value));
    }
    else{
      emit(PromoLoadingFailed(results.message));
      print(results.value);
    }
  }
}
