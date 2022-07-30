part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState({
    this.status = AuthenticationStatus.unknown,
  });
  final AuthenticationStatus status;

  @override
  List<Object> get props => [];
}

class AuthenticateInitialState extends AuthenticationState {
  const AuthenticateInitialState({
    super.status = AuthenticationStatus.unknown,
  });

  @override
  List<Object> get props => [status];
}

class AuthenticatedState extends AuthenticationState {
  const AuthenticatedState({
    this.user,
    super.status = AuthenticationStatus.authenticated,
  });
  final User? user;

  @override
  List<Object> get props => [status];
}

class UnAuthenticatedState extends AuthenticationState {
  const UnAuthenticatedState({
    super.status = AuthenticationStatus.unauthenticated,
  });

  @override
  List<Object> get props => [status];
}
