import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/presentation/view_model/authentication_cubit/authentication_state.dart';
import '../../../data/repos/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(AuthInitial());
  bool isHidden = true;
  void togglePasswordVisibility() {
    isHidden = !isHidden;
    emit(AuthInitial());
  }
  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    try {
      await authRepository.login(email, password);
      emit(AuthLoginSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

}
