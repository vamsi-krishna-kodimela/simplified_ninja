import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/post.dart';
import 'package:dio/dio.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _dio = Dio();

  Future<List<Post>> getPosts() async {
    final responses = await _firestore.collection("posts").get();
    final result = responses.docs
        .map((response) => Post.fromMap(response.id, response.data()))
        .toList();
    print(result[0].images);
    return result;
  }
}
