class UserDto {
  final String userId;
  final String email;
  final String password;
  final DateTime createdAt;

  UserDto(
      {required this.userId,
      required this.email,
      required this.password,
      required this.createdAt});
}
