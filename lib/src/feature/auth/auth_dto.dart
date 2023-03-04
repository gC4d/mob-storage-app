import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class AuthDto {
  final String email;
  final String password;
  
  const AuthDto({
    required this.email,
    required this.password,
  });

  
  AuthDto copyWith({
    String? email,
    String? password,
  }) {
    return AuthDto(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory AuthDto.fromMap(Map<String, dynamic> map) {
    return AuthDto(
      email: (map["email"] ?? '') as String,
      password: (map["password"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthDto.fromJson(String source) => AuthDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
