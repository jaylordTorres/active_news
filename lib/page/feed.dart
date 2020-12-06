import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../constant/main.dart';
import '../shared_class/main.dart';
import '../util/main.dart';
import '../widget/main.dart';

class FeedPage extends StatelessWidget {
  static UiRoutes route = UiRoutes.feed;
  final FeedModel feed;
  const FeedPage({Key key, @required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(feed.content.length);
    return UiPage(
      child: Scaffold(
        body: FutureBuilder(
            future: asyncWebLauncher(feed.url),
            builder: (context, state) {
              if (state.hasError) {
                return Text('has failed to load');
              }

              if (state.connectionState == ConnectionState.done) {
                if (state.data == true) {
                  Navigator.of(context).pop();
                }
                return buildError(context);
              }
              return LinearProgressIndicator();

              // return content(context);
            }),
      ),
    );
  }

  Widget buildError(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text('falaied to load'),
          ),
        ),
        ElevatedButton(
          child: Text('back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget content(BuildContext context) {
    return SingleChildScrollView(
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
              child:
                  Text(feed.title, style: Theme.of(context).textTheme.headline6
                      // .copyWith(color: Colors.red),
                      ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(feed.content),
            ),
          ],
        ),
      ),
    );
  }
}
