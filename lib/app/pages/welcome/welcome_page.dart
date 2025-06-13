import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pixelfield/app/widgets/background_container.dart';
import 'package:pixelfield/app/utils/colors.dart';
import 'package:pixelfield/core/autoroutes/routes.gr.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,

                decoration: BoxDecoration(color: Color(primaryColor)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    spacing: 10,
                    children: [
                      Text(
                        'Welcome',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text('Text Text Text'),
                      MaterialButton(
                        height: 50,
                        minWidth: double.infinity,
                        color: Color(btColor),
                        onPressed: () {},
                        child: Text('Scan Bottle'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Have an Account?'),
                          TextButton(
                            onPressed: () {
                              context.router.push(const SignInRoute());
                            },
                            child: Text(
                              'Sign In first',
                              style: TextStyle(color: Color(btColor)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
