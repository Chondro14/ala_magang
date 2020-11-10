part of'food_cubit.dart';

abstract class FoodState extends Equatable {
  const FoodState();
  @override
  List<Object> get props => [];

}

class FoodInitial extends FoodState {
  @override
  List<Object> get props => [];
}
class FoodLoadSucces extends FoodState{
  final List<Foods> foods;
  FoodLoadSucces({this.foods});
  @override
  List<Object> get props => [foods];

}
class FoodLoadFailed extends FoodState{
  final String message;
  FoodLoadFailed({this.message});
  @override
  List<Object> get props => [message];
}
