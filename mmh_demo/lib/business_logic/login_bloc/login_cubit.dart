import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:mmh_demo/repository/auth/auth_repository.dart';

import 'login_form/mobile_form.dart';
import 'login_form/pin_formz.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository) : super(const LoginState());

  final AuthRepository _authenticationRepository;

  void emailChanged(String value) {
    final phone = PhoneNumber.dirty(value);
    emit(
      state.copyWith(
        phoneNumber: phone,
        status: Formz.validate([phone, state.pin]),
      ),
    );
  }

  onChangeOfRemeberCheck(bool check) {
    emit(state.copyWith(rememberMe: check));
  }

  void passwordChanged(String value) {
    final pin = Pin.dirty(value);
    emit(
      state.copyWith(
        pin: pin,
        status: Formz.validate([state.phoneNumber, pin]),
      ),
    );
  }

  Future<void> sendOtpOnNumber() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authenticationRepository.logInWithMobileAndPin(
        phoneNumber: state.phoneNumber.value,
        pin: state.pin.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: FormzStatus.submissionFailure,
        ),
      );
    }
  }
}
