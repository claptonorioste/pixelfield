import 'package:flutter/material.dart';
import 'package:pixelfield/app/utils/colors.dart';
import 'package:pixelfield/core/injection_container.dart' as gi;
import 'package:pixelfield/core/autoroutes/routes.dart';
import 'package:pixelfield/data/drift/drift_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await gi.init();
  await initDb();
  runApp(PixelfieldApp());
}

class PixelfieldApp extends StatelessWidget {
  final AppRouter _appRouter;
  PixelfieldApp({super.key}) : _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(bgColor),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        primaryColor: Color(primaryColor),
        scaffoldBackgroundColor: Color(bgColor),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(btColor),
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
