import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String id;
  final String title;
  final List<String> description;
  final List<String> images;
  final DateTime postedOn;
  final List<String> likes;
  final List<String> keywords;

  Post(
    this.id,
    this.title,
    this.description,
    this.images,
    this.postedOn,
    this.likes,
    this.keywords,
  );

  Post.fromMap(this.id, Map<String, dynamic> data)
      : title = data["title"] ?? "",
        description = List<String>.from(data["points"] ?? []),
        images = List<String>.from((data["images"] ?? [])
            .map((e) => e.runtimeType == String ? e : e["text"])
            .toList()),
        postedOn = DateTime.now(),
        likes = List<String>.from(data["likes"] ?? []),
        keywords = List<String>.from(data["keywords"] ?? []);
}
