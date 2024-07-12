import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_weather_app/injection/injector.dart';
import 'package:quick_weather_app/presentation/feature/home/cubit/home_cubit.dart';
import 'package:quick_weather_app/presentation/feature/home/ui/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => injector(),
      child: const HomeBody(),
    );
  }
}
