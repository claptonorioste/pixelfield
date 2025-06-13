import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pixelfield/app/widgets/background_container.dart';
import 'package:pixelfield/core/autoroutes/routes.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      if (context.mounted) {
        context.router.replace(const WelcomeRoute());
      }
    });

    return Scaffold(
      body: BackgroundContainer(
        child: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.asset('assets/images/favicon.png', fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
