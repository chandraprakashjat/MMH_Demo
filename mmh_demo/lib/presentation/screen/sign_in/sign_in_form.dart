import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:formz/formz.dart';
import 'package:mmh_demo/business_logic/login_bloc/login_cubit.dart';
import 'package:mmh_demo/presentation/widget/name_titile_widget.dart';
import 'package:mmh_demo/route/app_route.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          //Actin About submissin failure
        } else if (state.status.isSubmissionSuccess) {
          //move to otp validation Screen
          Navigator.pushReplacementNamed(context, otpRoute);
        }
      },
      child: Padding(
        padding: EdgeInsets.all(activeTheme.paddingXL),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  height: size.height * .3,
                  child: const Center(
                    child: NameTitleWidget(),
                  )),
              _MobileInput(),
              SizedBox(
                height: activeTheme.marginL,
              ),
              _PasswordInput(),
              SizedBox(
                height: activeTheme.marginL,
              ),
              _CheckBox(),
              SizedBox(
                height: activeTheme.marginXXXL,
              ),
              _LoginButton(),
              SizedBox(
                height: activeTheme.marginXXL,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: dontHaveAccount,
                    style: Theme.of(context).textTheme.bodyText1),
                const TextSpan(text: ' '),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Fluttertoast.showToast(msg: 'Work in progress');
                        Navigator.pushReplacementNamed(context, signUpRoute);
                      },
                    text: signUpHere,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: activeTheme.indigo))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

class _MobileInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>
          previous.phoneNumber != current.phoneNumber,
      builder: (context, state) {
        return TextField(
          key: const Key('phoneInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: phoneNumber,
            helperText: '',
            errorText:
                state.phoneNumber.invalid ? 'Invalid Phone Number' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.pin != current.pin,
      builder: (context, state) {
        return TextField(
          key: const Key('pinInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            labelText: pin,
            helperText: '',
            errorText: state.pin.invalid ? 'Invalid pin' : null,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('raisedButton'),
                onPressed: state.status.isValidated
                    ? () => context.read<LoginCubit>().sendOtpOnNumber()
                    : null,
                child: const Text(signIn),
              );
      },
    );
  }
}

class _CheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>
          previous.rememberMe != current.rememberMe,
      builder: (context, state) {
        return Row(
          children: [
            SizedBox(
              height: activeTheme.sizeUnitXXL,
              width: activeTheme.sizeUnitXXL,
              child: Checkbox(
                value: state.rememberMe,
                onChanged: (isChange) => context
                    .read<LoginCubit>()
                    .onChangeOfRemeberCheck(!state.rememberMe),
              ),
            ),
            SizedBox(
              width: activeTheme.marginXS,
            ),
            const Text(rememberme),
            const Spacer(),
            GestureDetector(
              child: Text(
                forgotYourPassword,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: activeTheme.indigo,
                    ),
              ),
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Work in Progress'))),
            )
          ],
        );
      },
    );
  }
}
