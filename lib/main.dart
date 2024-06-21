import 'package:flutter/material.dart';
import 'package:flutter_application_8/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_application_8/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_best_selling_products_use_case.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_new_arrival_products_use_case.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_recommended_products_use_case.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/bottom_nav_bar_cubit/cubit/bottom_nav_bar_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_best_selling_products_cubit/fetch_best_selling_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_cubit.dart';
import 'package:flutter_application_8/core/utilis/theme/theme.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_screen.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/home_screen_web.dart';
import 'package:flutter_application_8/features/home/presentation/views/layout_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChangeBottomNavBarCubit()),
        BlocProvider(
          create: (context) => FetchBestSellingProductsCubit(
            FetchBestSellingProductsUseCase(
                homeRepo: HomeRepoImpl(homeDataSource: HomeDataSourceImpl())),
          )..fetchBestSellingProducts(),
        ),
        BlocProvider(
            create: (context) => FetchNewArrivalProductsCubit(
                  FetchNewArrivalProductsUseCase(
                      homeRepo:
                          HomeRepoImpl(homeDataSource: HomeDataSourceImpl())),
                )..fetchNewArrivalProducts()),
        BlocProvider(
            create: (context) => FetchRecommendedProductsCubit(
                  FetchRecommendedProductsUseCase(
                      homeRepo:
                          HomeRepoImpl(homeDataSource: HomeDataSourceImpl())),
                )..fetchRecommendedProducts()),
        BlocProvider(
            create: (context) => FetchCategoryCubit(
                  FetchCategoriesUseCase(
                      homeRepo:
                          HomeRepoImpl(homeDataSource: HomeDataSourceImpl())),
                )..fetchCategory()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: TApptheme.lightTheme,
          //darkTheme: TApptheme.darkTheme,
          themeMode: ThemeMode.light,
          home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              print(constraints.minHeight.toInt());

              if (constraints.minWidth.toInt() <= 640) {
                return const HomeScreen();
              }
              return const HomeWebScreen();
            },
          )),
    );
  }
}
