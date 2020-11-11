part of 'promo_cubit.dart';


 abstract class PromoState extends Equatable{
  const PromoState();
  @override
  List<Object> get props => [];
}

class PromoInitial extends PromoState {
}
class PromoLoaded extends PromoState{
  final List<Promo> promo;

  PromoLoaded(this.promo);

  @override
  List<Object> get props => [promo];
}
class PromoLoadingFailed extends PromoState{
  final String message;

  PromoLoadingFailed(this.message);
  @override
  List<Object> get props => [message];
}
