import 'package:formz/formz.dart';

enum PinValidationError { invalid }

class Pin extends FormzInput<String, PinValidationError> {
  const Pin.pure() : super.pure('');

  const Pin.dirty([String value = '']) : super.dirty(value);

  @override
  PinValidationError? validator(String? value) {
    if (value == null) {
      return PinValidationError.invalid;
    } else {
      return value.length > 4 ? null : PinValidationError.invalid;
    }
  }
}
