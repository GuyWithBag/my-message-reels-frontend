class PostDto {
  final String content;
  final String authorId;
  final List<String> replies;
  final DateTime createdAt;
  final bool published = false;

  PostDto(
      {required this.content,
      required this.authorId,
      required this.replies,
      required this.createdAt});
}
