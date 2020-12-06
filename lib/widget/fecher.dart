import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../shared_class/main.dart';

///
/// M for parser result model
/// T for return data
///
class UiFetcher<T, M> extends StatelessWidget {
  final Widget Function(BuildContext, T) builder;
  final T Function(CommonResponseModel) parser;
  final String url;
  const UiFetcher({Key key, this.builder, this.url, @required this.parser})
      : assert(parser != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: http.get(url),
      builder: (context, snopshot) {
        if (snopshot.connectionState == ConnectionState.done) {
          if (snopshot.hasError) {
            return Text('Error');
          }
          final jsonResponse = convert.jsonDecode(snopshot.data.body);
          final data = CommonResponseModel.fromJson(jsonResponse);
          return builder(context, parser(data));
        } else {
          return LinearProgressIndicator();
        }
      },
    );
  }
}
