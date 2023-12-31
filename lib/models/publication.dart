class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int shareCount;
  final Reaction curentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createdAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.shareCount,
    required this.curentUserReaction,
  });
}

class User {
  final String avatar;
  final String userName;

  User({
    required this.avatar,
    required this.userName,
  });
}

enum Reaction {
  like,
  love,
  laugh,
  sad,
  shocking,
  angry,
}
