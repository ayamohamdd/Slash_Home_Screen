part of 'bottom_nav_bar_cubit.dart';

@immutable
sealed class ChangeBottomNavBarState {}

final class ChangeBottomNavBarInitial extends ChangeBottomNavBarState {}

final class ChangeBottomNavBarSuccess extends ChangeBottomNavBarState {
  final int currentIndex;

  ChangeBottomNavBarSuccess(this.currentIndex);
}

final class ChangeBottomNavBarFailure extends ChangeBottomNavBarState {}
