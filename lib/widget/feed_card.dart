import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

/// Feed preview for card
class FeedCard extends StatelessWidget {
  final String thumbUrl;
  final String title;
  final String description;
  final String url;
  const FeedCard(
      {Key key, this.thumbUrl, this.title, this.description, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InteractiveViewer(
              child: FadeInImage.memoryNetwork(
            image: thumbUrl,
            placeholder: kTransparentImage,
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: Theme.of(context).textTheme.headline6
                // .copyWith(color: Colors.red),
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
