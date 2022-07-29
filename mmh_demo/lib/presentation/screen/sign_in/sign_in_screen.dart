import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mmh_demo/business_logic/login_bloc/login_cubit.dart';
import 'package:mmh_demo/presentation/screen/sign_in/sign_in_form.dart';
import 'package:mmh_demo/repository/auth/auth_repository.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(AuthRepository()),
        child: const SignInForm(),
      ),
    );
  }
}
