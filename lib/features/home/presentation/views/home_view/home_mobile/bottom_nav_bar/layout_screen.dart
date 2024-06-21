import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/bottom_nav_bar_cubit/cubit/bottom_nav_bar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  double width = AppDimension.screenWidth;
  double height = AppDimension.screenHeight;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeBottomNavBarCubit, ChangeBottomNavBarState>(
      builder: (context, state) {
        AppDimension.initDimensions(context);
        double width = AppDimension.screenWidth;
        double height = AppDimension.screenHeight;
        final cubit = ChangeBottomNavBarCubit.get(context);
        int currentIndex = cubit.currentIndex;
        if (state is ChangeBottomNavBarSuccess) {
          currentIndex = state.currentIndex;
        }
        return Scaffold(
          body: cubit.bottomScreens[currentIndex],
          bottomNavigationBar: Stack(
            children: [
              Container(
                height: height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BottomNavigationBar(
                      iconSize: 28,
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: AppConstants.backgroundColor,
                      unselectedItemColor: AppConstants.primaryColor,
                      selectedItemColor: AppConstants.primaryColor,
                      showUnselectedLabels: true,
                      currentIndex: cubit.currentIndex,
                      onTap: (index) {
                        cubit.changeBottom(index);
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset("assets/icons/home.svg"),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset("assets/icons/heart.svg"),
                          label: 'Favorites',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                              "assets/icons/shopping-cart.svg"),
                          label: 'My Cart',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset("assets/icons/profile-circle.png"),
                          label: 'Profile',
                        ),
                      ]),
                ),
              ),
              Positioned(
                top: height * 0.00055,
                left: ((currentIndex) * (width / 4)) + width * 0.04,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: AppConstants.primaryColor,
                  ),
                  width: width * 0.17,
                  height: height * 0.007,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
