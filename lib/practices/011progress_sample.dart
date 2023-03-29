// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProgressSample extends StatefulWidget {
  const ProgressSample({super.key});

  @override
  ProgressSampleState createState() => ProgressSampleState();
}

class ProgressSampleState extends State<ProgressSample> {
  final String title = "010form_sample";

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
            children: [
              // 模糊进度条(会执行一个动画)
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: const AlwaysStoppedAnimation(Colors.blue),
              ),
              //进度条显示50%
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  value: .5,
                ),
              ),
              // 模糊进度条(会执行一个旋转动画)
              Container(
                width: 50,
                height: 400,
                margin: const EdgeInsets.only(top: 50),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
              //进度条显示50%，会显示一个半圆
              Container(
                width: 50,
                height: 400,
                margin: const EdgeInsets.only(top: 50),
                child: CircularProgressIndicator(
                  // 表示圆形进度条的粗细
                  // strokeWidth: 50,
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  value: .5,
                ),
              ),
              // 宽高不等
              SizedBox(
                height: 100,
                width: 130,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  value: .7,
                ),
              ),
            ],
          ),
        ));
  }
}
