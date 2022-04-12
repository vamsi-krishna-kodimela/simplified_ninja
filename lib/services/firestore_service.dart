import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../models/post.dart';
import 'package:dio/dio.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Post>> getPosts() async {
    final responses = await _firestore
        .collection("posts")
        .orderBy("postedOn", descending: true)
        .get();
    responses.docs.forEach((x) => print(x.data().toString()));
    List<Post> result = [];
    try {
      result = responses.docs
          .map((response) => Post.fromMap(response.id, response.data()))
          .toList();
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
    }

    return result;
  }
}
