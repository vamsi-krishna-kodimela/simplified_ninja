import 'package:flutter/foundation.dart';
import 'package:simplified_ninja/services/firestore_service.dart';
import '../models/post.dart';

class PostsProvider with ChangeNotifier {
  final FirestoreService _firestoreService = FirestoreService();
  List<Post> _posts = [];

  PostsProvider() {
    _firestoreService.getPosts().then((response) {
      _posts = response;
      notifyListeners();
    });
  }

  List<Post> get posts => _posts;
}
