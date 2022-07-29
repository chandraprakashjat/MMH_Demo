import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mmh_demo/business_logic/otp_bloc/otp_bloc.dart';

import 'package:mmh_demo/route/app_route.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpBloc, OtpState>(
        listener: (context, state) {
          switch (state.otpStatus) {
            case OtpStatus.resendSuccess:
              {
                Fluttertoast.showToast(msg: state.message);
                break;
              }
            case OtpStatus.submitSuccess:
              {
                Fluttertoast.showToast(msg: state.message);
                Navigator.pushReplacementNamed(context, homeRoute);
                break;
              }

            case OtpStatus.error:
              {
                Fluttertoast.showToast(msg: state.error ?? 'Error!');
                break;
              }
            case OtpStatus.init:
              break;
            case OtpStatus.submiting:
              break;
            case OtpStatus.resending:
              break;
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(activeTheme.paddingXL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: activeTheme.marginXXXL,
                ),
                Center(
                  child: Icon(
                    Icons.call,
                    size: 70,
                    color: activeTheme.primaryAccentColor,
                  ),
                ),
                SizedBox(height: activeTheme.marginXXL),
                Text(
                  checkYourPhone,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: activeTheme.marginXL,
                ),
                Text(
                  toConfirm,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  '+1 223 334  45',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(
                  height: activeTheme.marginXXL,
                ),
                _OTPField(),
                SizedBox(
                  height: activeTheme.marginXXL,
                ),
                _SubmitButton(),
                SizedBox(
                  height: activeTheme.marginS,
                ),
                _ResendButton()
              ],
            ),
          ),
        ));
  }
}

class _OTPField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpBloc, OtpState>(builder: (context, state) {
      return OtpTextField(
        textStyle: activeTheme.body1,
        numberOfFields: 4,
        borderColor: activeTheme.primaryAccentColor,
        focusedBorderColor: activeTheme.primaryAccentColor,
        showFieldAsBox: true,
        onCodeChanged: (value) =>
            context.read<OtpBloc>().add(EnterOtp(changeOtp: value)),

        onSubmit: (String verificationCode) => context
            .read<OtpBloc>()
            .add(EnterOtp(changeOtp: verificationCode)), // end onSubmit
      );
    });
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpBloc, OtpState>(
        buildWhen: (pre, current) => pre.otpStatus != current.otpStatus,
        builder: ((context, state) {
          return state.otpStatus == OtpStatus.submiting
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: () => context.read<OtpBloc>().add(SubmitEvent()),
                  child: const Text(submit));
        }));
  }
}

class _ResendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpBloc, OtpState>(
        buildWhen: (pre, current) => pre.otpStatus != current.otpStatus,
        builder: ((context, state) {
          return state.otpStatus == OtpStatus.resending
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      foregroundColor: MaterialStateProperty.all(
                          activeTheme.primaryAccentColor),
                      side: MaterialStateProperty.all(BorderSide(
                          color: activeTheme.lightGray,
                          width: activeTheme.buttonBorderWidth)),
                      backgroundColor:
                          MaterialStateProperty.all(activeTheme.lightGray)),
                  onPressed: () =>
                      context.read<OtpBloc>().add(ResendOtpEvent()),
                  child: const Text(resendCode));
        }));
  }
}
