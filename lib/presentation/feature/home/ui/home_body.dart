import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_weather_app/data/response_error/response_error.dart';
import 'package:quick_weather_app/presentation/feature/home/cubit/home_cubit.dart';
import 'package:quick_weather_app/presentation/feature/home/ui/fav_cities_widget.dart';
import 'package:quick_weather_app/presentation/feature/home/ui/weather_widget.dart';
import 'package:quick_weather_app/presentation/widgets/app_loading_indicator.dart/app_loading_indicator.dart';
import 'package:quick_weather_app/presentation/widgets/app_snack_bar/app_snack_bar.dart';
import 'package:quick_weather_app/presentation/widgets/focus_scope_dismissible/focus_scope_dismissible.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((HomeCubit cubit) => cubit.state.initStatus.isLoading);
    final weatherEntity =
        context.select((HomeCubit cubit) => cubit.state.weatherEntity);

    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (previous, current) {
        return current.initStatus != previous.initStatus;
      },
      listener: (context, state) {
        state.initStatus.whenOrNull(
          success: () {
            AppSnackBar.showSuccess(
              context,
              'weather fetched successfully!',
            );
          },
          failure: (error) {
            final errorText = error.getErrorMessage();
            AppSnackBar.showError(context, errorText);
          },
        );
      },
      child: FocusScopeDismissible(
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        autocorrect: false,
                        decoration: const InputDecoration(
                          hintText: 'Enter city name',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.location_city),
                          contentPadding:
                              EdgeInsets.all(8), // Adding the prefix icon
                        ),
                        onChanged: context.read<HomeCubit>().setCityName,
                      ),
                    ),
                    if (isLoading)
                      const AppLoadingIndicator()
                    else
                      IconButton(
                        onPressed: () {
                          context.read<HomeCubit>().getCurrentWeather();
                        },
                        icon: const Icon(Icons.search),
                        hoverColor: Colors.red,
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<HomeCubit>().makeCityFavorite();
                  },
                  child: const Text('Make the city favorite'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showBottomSheet(context);
                  },
                  child: const Text('Show Bottom Sheet'),
                ),
                WeatherWidget(
                  isLoading: isLoading,
                  weatherEntity: weatherEntity,
                ),
              ],
            ),
          ),
          drawer: const Drawer(
            backgroundColor: Color.fromARGB(255, 182, 185, 182),
            child: FavCitiesWidget(),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext prevContext) {
    showModalBottomSheet<void>(
      context: prevContext,
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: prevContext.read<HomeCubit>(),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.favCities.length,
                itemBuilder: (context, index) {
                  final city = state.favCities[index];
                  return ListTile(
                    title: Text(city),
                    trailing: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        prevContext.read<HomeCubit>().makeCityUnfavorite(city);
                      },
                    ),
                    onTap: () {
                      print('Tile tapped for $city');
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
