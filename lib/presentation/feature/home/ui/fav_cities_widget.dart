import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_weather_app/presentation/feature/home/cubit/home_cubit.dart';

class FavCitiesWidget extends StatelessWidget {
  const FavCitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final favCities =
        context.select((HomeCubit cubit) => cubit.state.favCities);

    return Column(
      children: [
        const SizedBox(
          height: kToolbarHeight,
        ),
        const Text(
          'Favorite Cities',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: favCities.length,
            itemBuilder: (context, index) {
              final city = favCities[index];
              return ListTile(
                title: Text(city),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.read<HomeCubit>().makeCityUnfavorite(city);
                  },
                ),
                onTap: () {
                  print('Tile tapped for $city');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
