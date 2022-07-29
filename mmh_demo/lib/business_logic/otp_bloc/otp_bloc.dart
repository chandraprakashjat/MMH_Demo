import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mmh_demo/repository/auth/auth_repository.dart';
part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc({required this.authenticationRepository}) : super(const OtpState()) {
    on<SubmitEvent>(_submitOtp);
    on<ResendOtpEvent>(_resendOtp);
    on<EnterOtp>(_enterOtp);
  }

  AuthRepository authenticationRepository;

  FutureOr<void> _submitOtp(SubmitEvent event, Emitter<OtpState> emit) async {
    if (state.otp.isEmpty || state.otp.length < 4) {
      emit(state.copyWith(
          otpStatus: OtpStatus.error, error: 'Enter 4 digit otp number!'));
    } else {
      emit(state.copyWith(otpStatus: OtpStatus.submiting));
      try {
        await authenticationRepository.submitOtpValue(otp: state.otp);
        emit(state.copyWith(
            otpStatus: OtpStatus.submitSuccess,
            message: 'Login  Successfully!'));
      } catch (e) {
        emit(
          state.copyWith(
            error: e.toString(),
            otpStatus: OtpStatus.error,
          ),
        );
      }
    }
  }

  FutureOr<void> _resendOtp(
      ResendOtpEvent event, Emitter<OtpState> emit) async {
    emit(state.copyWith(otpStatus: OtpStatus.resending));

    try {
      await authenticationRepository.resendOTP();
      emit(state.copyWith(
          otpStatus: OtpStatus.resendSuccess,
          message: 'Otp Resend Successfully!'));
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
          otpStatus: OtpStatus.error,
        ),
      );
    }
  }

  FutureOr<void> _enterOtp(EnterOtp event, Emitter<OtpState> emit) {
    emit(state.copyWith(otp: event.changeOtp));
  }
}
