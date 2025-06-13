import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pixelfield/app/widgets/background_container.dart';
import 'package:pixelfield/core/autoroutes/routes.gr.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final Future<void> _navigationFuture;

  @override
  void initState() {
    super.initState();
    _navigationFuture = Future.delayed(const Duration(seconds: 2));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _navigationFuture.then((_) {
      if (mounted) {
        context.router.replace(const WelcomeRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
