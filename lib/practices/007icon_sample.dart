// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconSample extends StatelessWidget {
  const IconSample({super.key});

  final String title = "007image_sample";

  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: 0xe03e
    icons += "\uE03e";
// error:  0xe237
    icons += " \uE237";
// fingerprint: 0xe287
    icons += " \uE287";
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 设置文本默认样式的widget，最外面套一层，子节点中的文本都会继承
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // flutter 默认包含一套md的字体图标，可以在yaml中配置开启   uses-material-design: true
              // icon可以像文本一样使用，根据unicode码点指定icon
              Text(
                icons,
                style: const TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green,
                ),
              ),
              // flutter封装了IconData，这样比unicode码点要方便一些
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.accessible, color: Colors.green),
                  Icon(Icons.error, color: Colors.green),
                  Icon(Icons.fingerprint, color: Colors.green),
                ],
              )
            ],
          ),
        ));
  }
}
