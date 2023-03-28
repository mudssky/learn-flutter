// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  final String title = "009text_field";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 设置文本默认样式的widget，最外面套一层，子节点中的文本都会继承
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [],
          ),
        ));
  }
}
