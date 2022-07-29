part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState(
      {this.phoneNumber = const PhoneNumber.pure(),
      this.pin = const Pin.pure(),
      this.status = FormzStatus.pure,
      this.errorMessage,
      this.rememberMe = false});

  final PhoneNumber phoneNumber;
  final Pin pin;
  final FormzStatus status;
  final String? errorMessage;
  final bool rememberMe;

  @override
  List<Object> get props => [phoneNumber, pin, rememberMe, status];

  LoginState copyWith(
      {PhoneNumber? phoneNumber,
      Pin? pin,
      FormzStatus? status,
      String? errorMessage,
      bool? rememberMe}) {
    return LoginState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      pin: pin ?? this.pin,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }
}
