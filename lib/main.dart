import 'package:evently_c16/l10n/app_localizations.dart';
import 'package:evently_c16/ui/common/App_sharedPreference.dart';
import 'package:evently_c16/ui/desgin/design.dart';
import 'package:evently_c16/ui/providers/Theme_provider.dart';
import 'package:evently_c16/ui/providers/language_provider.dart';
import 'package:evently_c16/ui/screens/OnBardeing/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:evently_c16/routes.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/change_notifier_provider.dart';



void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await AppSharedPreferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>ThemeProvider()),
      ChangeNotifierProvider(create: (_)=>LanguageProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: App_them.lightThem,
      darkTheme: App_them.darkTheme,
      themeMode:provider.getSelectedThemeMode(),
      initialRoute: App_routes.OnBoardingScreen.route,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      locale: languageProvider.getSelectedLocale(),
      routes: {
        App_routes.OnBoardingScreen.route: (context) => OnBoardingScreen(),
    },
    );
  }
}
