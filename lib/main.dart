import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/features/splash/screens/splash_screen.dart';
import 'package:talet_samak/injection_container.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';
import 'package:talet_samak/utils/localization/cubit/locale_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependancies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LocaleCubit()..getSavedLanguage()),
        ],
        child: BlocBuilder<LocaleCubit, ChangeLocaleState>(
          builder: (context, state) {
            return MaterialApp(
              locale: state.locale,
              supportedLocales: const [
                Locale('en'),
                Locale('ar'),
              ],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (deviceLocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (deviceLocale != null &&
                      deviceLocale.languageCode == locale.languageCode) {
                    return deviceLocale;
                  }
                }

                return supportedLocales.first;
              },
              debugShowCheckedModeBanner: false,
              theme: appTheme,
              home: const SplashScreen(),
            );
          },
        ));
  }
}
