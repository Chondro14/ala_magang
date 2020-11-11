

import 'package:ala_magang/models/models.dart';
import 'package:ala_magang/service/service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());
  Future<void> getFoods()async{
    ApiReturnValue<List<Foods>> results= await FoodService.getFoods();
    if(results.value!=null){
      emit(FoodLoadSucces(foods: results.value));
    }
    else{
      emit(FoodLoadFailed(message: results.message));
    }
  }
}
