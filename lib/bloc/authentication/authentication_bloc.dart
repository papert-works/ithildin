import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:equatable/equatable.dart';
import 'dart:developer' as developer;

import 'package:ithildin/resources/authentication_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.authenticationRepository})
      : super(const AuthenticateInitialState()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);

    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);

    _authenticationStatusSubscription =
        authenticationRepository.authState.listen(
      (user) => add(AuthenticationStatusChanged(user)),
    );
  }
  final AuthenticationRepository authenticationRepository;

  late StreamSubscription<User?> _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    // authenticationRepository.dispose();
    return super.close();
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    if (event.user == null) {
      emit(const UnAuthenticatedState());
    }
    if (event.user != null) {
      emit(AuthenticatedState(user: event.user));
    }

    try {} catch (e) {
      emit(const UnAuthenticatedState());
    }
  }

  void _onAuthenticationLogoutRequested(AuthenticationLogoutRequested event,
      Emitter<AuthenticationState> emit) async {
    emit(const UnAuthenticatedState());
  }
}
