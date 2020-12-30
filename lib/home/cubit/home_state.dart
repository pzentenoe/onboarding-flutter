part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  List<PurchaseItem> purchases;

  HomeSuccess({@required this.purchases});
}

class HomeFailed extends HomeState {
  String message;

  HomeFailed({@required this.message});
}
