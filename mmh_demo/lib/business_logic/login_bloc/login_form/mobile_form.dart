import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class PhoneNumber extends FormzInput<String, EmailValidationError> {
  const PhoneNumber.pure([String value = '']) : super.pure(value);
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  static final _phoneRegExp = RegExp(
    r'(^(?:[+0]9)?[0-9]{10,12}$)',
  );

  @override
  EmailValidationError? validator(String value) {
    return _phoneRegExp.hasMatch(value)
        ? (value.length == 10 ? null : EmailValidationError.invalid)
        : EmailValidationError.invalid;
  }
}
