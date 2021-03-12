import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginWithEmail(String email, String password) =
      LoginWithEmail;
  const factory LoginEvent.signUp(String email, String password) = SignUp;
  const factory LoginEvent.logOut() = LogOut;
}
