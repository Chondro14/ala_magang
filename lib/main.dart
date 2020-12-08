
import 'package:ala_magang/UI/pages/pages.dart';
import 'package:ala_magang/cubit/blog_cubit.dart';
import 'package:ala_magang/cubit/cubit.dart';
import 'package:ala_magang/cubit/promo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => BlogCubit(),child: BlogPageMain(),),
          BlocProvider(create: (_) => FoodCubit()),
          BlocProvider(create: (_) => ShopCubit()),
          BlocProvider(create: (_)=> PromoCubit(),child: HomePageMain(),)
        ],
        child: GetMaterialApp(
          home: CartPageMain(),
        ));
  }
}
