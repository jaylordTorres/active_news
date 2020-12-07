import 'package:active_news/shared_class/store.dart';
import 'package:flutter/material.dart';
import '../constant/main.dart';
import '../widget/main.dart';
import '../shared_class/main.dart';

class FeedsPage extends StatelessWidget {
  static UiRoutes route = UiRoutes.feeds;
  const FeedsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UiPage(
        child: Scaffold(
            body: UiFetcher<List<FeedModel>, FeedModel>(
      url: ApiConstant.newsUrl + ApiConstant.key,
      builder: builder,
      parser: FeedModel.fromResponseList,
    )));
  }

  Widget builder(BuildContext context, List<FeedModel> data) {
    Store.articles = data;
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final feed = data[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: FeedCard(feed: feed),
        );
      },
    );
  }
}
