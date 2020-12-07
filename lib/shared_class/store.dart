import 'package:shared_preferences/shared_preferences.dart';
import 'feed_model.dart';

class Store {
  static List<FeedModel> articles = [];
  static SharedPreferences storage;
}
