import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  TextSample();

  String title = "003text_sample";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "1.Hello world",
                textAlign: TextAlign.left,
              ),
              Text(
                "2.Hello world! I'm Jack. " * 4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "3.Hello world",
                textScaleFactor: 1.5,
              )
            ],
          ),
        ));
  }
}
