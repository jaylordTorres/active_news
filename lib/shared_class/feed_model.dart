import '../util/main.dart';

import 'common_response_mode.dart';
import 'source_model.dart';

class FeedModel {
  String author;
  String content;
  String description;
  String publishedAt;
  String url;
  String urlToImage;
  SourceModel source;
  String title;

  FeedModel({
    this.author,
    this.content,
    this.description,
    this.publishedAt,
    this.url,
    this.urlToImage,
    this.source,
    this.title,
  });

  FeedModel.fromJson(json) {
    author = json["author"];
    content = json["content"];
    description = cleanTags(json["description"]);
    publishedAt = json["publishedAt"];
    url = json["url"];
    urlToImage = json["urlToImage"];
    source = SourceModel.fromJson(json["source"]);
    title = json["title"];
  }
  static List<FeedModel> fromResponseList(CommonResponseModel reponse) {
    final List<dynamic> articles = reponse.data["articles"];
    return articles.map((article) => FeedModel.fromJson(article)).toList();
  }
}
