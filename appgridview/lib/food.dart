class Food {
  late int id;
  String name;
  String urlImage;
  Duration duration;
  String complexity;
  int categoryId;

  Food({
    required this.id,
    required this.name,
    required this.urlImage,
    required this.duration,
    required this.complexity,
    required this.categoryId,
  });
  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
        id: int.tryParse(json['id']) ?? 0,
        name: json['name'] ?? "",
        urlImage: json['urlImage'] ?? "",
        duration: json['duration'] ?? "",
        complexity: json['complexity'] ?? "",
        categoryId: json['categoryId'] ?? "");
  }
}
