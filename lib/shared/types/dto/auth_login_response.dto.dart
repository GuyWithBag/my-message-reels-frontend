class AuthLoginResponseDto {
  final String accessToken;
  final String refreshToken;

  AuthLoginResponseDto({required this.accessToken, required this.refreshToken});

  factory AuthLoginResponseDto.fromJson(Map<String, dynamic> json) {
    return AuthLoginResponseDto(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }
}
