import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String id;
  final String title;
  final String description;
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
        description = data["description"] ?? "Date not available",
        images = List<String>.from(data["images"] ?? []),
        postedOn = (data["postedOn"] as Timestamp).toDate(),
        likes = List<String>.from(data["likes"] ?? []),
        keywords = List<String>.from(data["keywords"] ?? []);
}
