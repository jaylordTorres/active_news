import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../page/main.dart';
import '../shared_class/main.dart';

/// Feed preview for card
class FeedCard extends StatelessWidget {
  final FeedModel feed;
  const FeedCard({Key key, @required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => FeedPage(feed: feed)));
      },
      child: Container(
        child: Column(
          children: [
            InteractiveViewer(
                child: FadeInImage.memoryNetwork(
              image: feed.urlToImage,
              placeholder: kTransparentImage,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(feed.title,
                  style: Theme.of(context).textTheme.headline6),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(feed.description),
            ),
          ],
        ),
      ),
    );
  }
}
