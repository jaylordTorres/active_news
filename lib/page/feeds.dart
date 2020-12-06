import 'package:flutter/material.dart';
import '../constant/main.dart';
import '../widget/main.dart';
import '../shared_class/main.dart';

class FeedsPage extends StatelessWidget {
  static UiRoutes route = UiRoutes.root;
  const FeedsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UiPage(
        child: Scaffold(
            body: UiFetcher<List<FeedModel>, FeedModel>(
      url: 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=' +
          ApiConstant.key,
      builder: builder,
      parser: FeedModel.fromResponseList,
    )));
  }

  Widget builder(BuildContext context, List<FeedModel> data) {
    print(data);
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final feed = data[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: FeedCard(
            title: feed.title,
            url: feed.url,
            description: feed.description,
            thumbUrl: feed.urlToImage,
          ),
        );
      },
    );
  }
}
