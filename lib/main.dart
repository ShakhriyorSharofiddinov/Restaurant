import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurnt_app/presentation/pages/splash_page.dart';
import 'package:restaurnt_app/provider/favourite.dart';
import 'package:restaurnt_app/provider/lang.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          supportedLocales: const [
            Locale("uz", "UZ"),
            Locale("ru", "RU"),
            Locale("en", "US"),
          ],
          path: "assets/translation",
          child: MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => LangProvider()),
                ChangeNotifierProvider(create: (_) => FavouriteProvider()),
              ],
              child: const MyApp()
          )

      )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(fontFamily: "Manrope"),
      home: const SplashPage(),
    );
  }
}
