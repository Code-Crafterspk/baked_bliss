import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:equatable/equatable.dart';

class AuthResponse extends Equatable {
  final String userId;

  final bool isAuthenticated;
  final AuthMode authMode;

  const AuthResponse({
    required this.userId,
    required this.isAuthenticated,
    required this.authMode,
  });

  @override
  List<Object?> get props => [userId, isAuthenticated, authMode];

  AuthResponse copyWith({
    final String? userId,
    final bool? isAuthenticated,
    final AuthMode? authMode,
  }) {
    return AuthResponse(
      userId: userId ?? this.userId,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      authMode: authMode ?? this.authMode,
    );
  }
}
