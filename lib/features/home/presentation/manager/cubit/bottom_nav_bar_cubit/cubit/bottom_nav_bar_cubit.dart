import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_8/features/cart/cart_screen.dart';
import 'package:flutter_application_8/features/favorits/favorits_screen.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_mobile/home_screen.dart';
import 'package:flutter_application_8/features/profile/profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_bar_state.dart';

class ChangeBottomNavBarCubit extends Cubit<ChangeBottomNavBarState> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeScreen(),
    const FavoritsScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  ChangeBottomNavBarCubit() : super(ChangeBottomNavBarInitial());
  static ChangeBottomNavBarCubit get(context) => BlocProvider.of(context);

  void changeBottom(int index) {
    // emit(ChangeBottomNavBarInitial());
    currentIndex = index;
    emit(ChangeBottomNavBarSuccess(currentIndex));
  }
}
