part of 'otp_bloc.dart';

abstract class OtpEvent {
  OtpEvent({this.otp = ''});
  String otp;
}

class InitEvent extends OtpEvent {}

class SubmitEvent extends OtpEvent {}

class ResendOtpEvent extends OtpEvent {}

class EnterOtp extends OtpEvent {
  String changeOtp;
  EnterOtp({required this.changeOtp}) : super(otp: changeOtp);
}
