part of 'shop_cubit.dart';

abstract class ShopState extends Equatable {
  const ShopState();
  @override
  List<Object> get props => [];
}

class ShopInitial extends ShopState {
  @override
  List<Object> get props => [];
}
class ShopLoadSucces extends ShopState{
  final List<Shop> shop;
  ShopLoadSucces({this.shop});
  @override
  List<Object> get props => [shop];
}
class ShopLoadFailed extends ShopState{
  final String message;
  ShopLoadFailed({this.message});
  @override
  List<Object> get props => [message];
}
