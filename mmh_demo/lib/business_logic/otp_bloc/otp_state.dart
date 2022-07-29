part of 'otp_bloc.dart';

enum OtpStatus {
  init,
  submiting,
  resending,
  submitSuccess,
  resendSuccess,
  error
}

class OtpState extends Equatable {
  const OtpState(
      {this.otp = '',
      this.otpStatus = OtpStatus.init,
      this.error,
      this.message = ''});

  final OtpStatus otpStatus;
  final String otp;
  final String? error;
  final String message;

  @override
  List<Object> get props => [otpStatus, otp, message];

  OtpState copyWith(
      {OtpStatus? otpStatus, String? otp, String? error, String? message}) {
    return OtpState(
        otp: otp ?? this.otp,
        otpStatus: otpStatus ?? this.otpStatus,
        error: error ?? this.error,
        message: message ?? this.message);
  }
}
