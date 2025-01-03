import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());

      try {
        // TODO: Implement actual authentication logic here
        await Future.delayed(const Duration(seconds: 2)); // Simulate API call
        emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure(e.toString()));
      }
    });
  }

  // bool _isValidEmail(String email) {
  //   return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  // }

  // bool _isValidPassword(String password) {
  //   return password.length >= 6;
  // }
}
