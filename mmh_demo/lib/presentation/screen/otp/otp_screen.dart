import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mmh_demo/business_logic/otp_bloc/otp_bloc.dart';
import 'package:mmh_demo/presentation/screen/otp/otp_page.dart';
import 'package:mmh_demo/repository/auth/auth_repository.dart';
import 'package:mmh_demo/route/app_route.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.popAndPushNamed(context, loginRoute),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: BlocProvider(
            child: const OtpPage(),
            create: (_) =>
                OtpBloc(authenticationRepository: AuthRepository())));
  }
}
