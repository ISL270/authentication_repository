import 'package:equatable/equatable.dart';

import 'package:authentication_repository/src/models/user_type.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
    this.userType,
    this.phoneNumber,
  });

  /// The current user's id.
  final String id;

  /// The current user's name (display name).
  final String? name;

  /// The current user's email address.
  final String? email;

  final String? phoneNumber;

  /// Url for the current user's photo.
  final String? photo;

  final UserType? userType;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [
        email,
        id,
        name,
        photo,
        userType,
        phoneNumber,
      ];

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phoneNumber,
    String? photo,
    UserType? userType,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      photo: photo ?? this.photo,
      userType: userType ?? this.userType,
    );
  }
}
