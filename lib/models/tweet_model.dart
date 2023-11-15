class TweetModel {
  final String namaPengguna;
  final String username;
  final String body;
  final String url;
  final List<String> image;
  final String verified;
  final String otomatis;
  final DateTime createdAt;
  final List<String> comment;
  final List<String> retweet;
  final List<String> like;
  final int view;

  TweetModel({
    required this.namaPengguna,
    required this.username,
    required this.body,
    required this.url,
    required this.image,
    required this.verified,
    required this.otomatis,
    required this.createdAt,
    required this.comment,
    required this.retweet,
    required this.like,
    required this.view,
  });
}
