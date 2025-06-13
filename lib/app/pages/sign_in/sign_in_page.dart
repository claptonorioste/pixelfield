import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/app/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:pixelfield/app/utils/colors.dart';
import 'package:pixelfield/app/pages/sign_in/widgets/text_field.dart';
import 'package:pixelfield/core/autoroutes/routes.gr.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => SignInBloc()..add(SignInEvent.started()),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color(bgColor)),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 10),
              CustomTextField(
                label: 'Email',
                hintText: 'Email',
                controller: emailController,
                onChanged: () {},
              ),

              BlocBuilder<SignInBloc, SignInState>(
                buildWhen: (previous, current) =>
                    previous.obscureText != current.obscureText,
                builder: (context, state) {
                  return CustomTextField(
                    isPassword: true,
                    label: 'Password',
                    hintText: 'Password',
                    controller: passwordController,
                    obscureText: state.obscureText,
                    onChanged: () {
                      context.read<SignInBloc>().add(SignInEvent.obscureText());
                    },
                  );
                },
              ),
              SizedBox(height: 10),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color(btColor),
                onPressed: () {
                  context.router.replace(const DashboardRoute());
                },
                child: Text('Continue'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Cant sign in?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Recover Password',
                      style: TextStyle(color: Color(btColor)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
