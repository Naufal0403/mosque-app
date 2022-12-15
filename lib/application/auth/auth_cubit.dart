import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_api/model/auth/login_model.dart';
import 'package:flutter_api/repository/auth/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthRepository repository;
  final flutterSecureStorage = const FlutterSecureStorage();

  AuthCubit(this.repository) : super(AuthState.initial());

  Future<void> login(Map<String, dynamic> payload) async {
    emit(AuthState.loading());

    final response = await repository.login(payload);

    response.fold(
      (l) {
        emit(AuthState.failure(l.message));
      },
      (r) {
        emit(AuthState.succcess(r));
      },
    );
  }

  Future<void> register(Map<String, dynamic> payload) async {
    emit(AuthState.loading());

    final response = await repository.register(payload);

    response.fold(
      (l) {
        emit(AuthState.failure(l.message));
      },
      (r) {
        emit(AuthState.succcess(r));
      },
    );
  }

  Future<void> mockLogin(Map<String, dynamic> payload) async {
    emit(AuthState.loading());

    final email = (payload['email'] as String);

    final roles = {
      'takmir@gmail.com': 'takmir',
      'bendahara@gmail.com': 'treasurer',
      'staff@gmail.com': 'staff',
      'supervisor@gmail.com': 'supervisor',
      'manager@gmail.com': 'manager',
    };

    Timer(
      Duration(seconds: 2),
      () async {
        await flutterSecureStorage.write(key: 'role', value: roles[email] ?? 'supervisor');
        emit(AuthState.succcess(LoginModel.fromJson({})));
      },
    );
  }
}
