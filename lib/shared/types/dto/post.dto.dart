class PostDto {
  final String content;
  final String authorId;
  final List<String>? replies;
  final List<String> likes;
  final DateTime createdAt;
  final bool published = false;

  PostDto({
    required this.content,
    required this.authorId,
    this.replies,
    this.likes = const [],
    required this.createdAt,
  });
}
