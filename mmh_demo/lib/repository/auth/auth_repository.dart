class AuthRepository {
  logInWithMobileAndPin({String? phoneNumber, String? pin}) async {
    await Future.delayed(const Duration(seconds: 3));
    return '12345';
  }

  submitOtpValue({String? otp}) async {
    await Future.delayed(const Duration(seconds: 5));
    return '12345';
  }

  resendOTP() async {
    await Future.delayed(const Duration(seconds: 3));
    return '12345';
  }
}
