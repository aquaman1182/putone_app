class Community {
  Community({
    required this.name,
    required this.imagePath,
    required this.authorize,
    required this.official,
  });

  final String imagePath;
  final String name;
  final String authorize;
  final bool official;
}
