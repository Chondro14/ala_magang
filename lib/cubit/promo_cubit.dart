import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'promo_state.dart';

class PromoCubit extends Cubit<PromoState> {
  PromoCubit() : super(PromoInitial());
}
