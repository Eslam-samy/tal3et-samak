import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/my_log.dart';
import 'package:talet_samak/features/home/home_screen/presentation/bloc/home/remote/remote_home_bloc.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/ImageSlider.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/categoris_widget.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/greeting_text.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/home_screen_app_bar.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/special_offers_widget.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/trend_meals_widget.dart';
import 'package:talet_samak/injection_container.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RemoteHomeBloc>()..add(const GetHomeEvent()),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: main_app_padding, vertical: 10),
        child: BlocBuilder<RemoteHomeBloc, RemoteHomeState>(
          builder: (_, state) {
            if (state is HomeLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            if (state is ErrorHomeState) {
              return const Center(
                child: Icon(Icons.refresh),
              );
            }
            if (state is LoadedHomeState) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeScreenAppbar(
                      imageUrl: state.home.data?.user?.image ?? "",
                      onSearchClicked: () {},
                      onProfileClicked: () {},
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    GreetingText(name: state.home.data?.user?.name ?? ""),
                    const SizedBox(
                      height: 20,
                    ),
                    ImageSliderWidget(sliders: state.home.data!.sliders!),
                    Text('categories'.tr(context),
                        style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(
                      height: 14,
                    ),
                    CategoriesWidget(categories: state.home.data!.categories!),
                    const SizedBox(
                      height: 36,
                    ),
                    Text('trend_meals'.tr(context),
                        style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(
                      height: 12,
                    ),
                    TrendMealsWidget(products: state.home.data!.data!),
                    const SizedBox(
                      height: 26,
                    ),
                    Text('special_offers'.tr(context),
                        style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 14),
                    SpecialOffersWidget(
                      products: state.home.data!.offers!,
                    )
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
