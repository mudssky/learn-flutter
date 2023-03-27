// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../logger/index.dart';

class ButtonSample extends StatelessWidget {
  const ButtonSample({super.key});

  final String title = "004button_sample";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 设置文本默认样式的widget，最外面套一层，子节点中的文本都会继承
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // 1.漂浮按钮，带有阴影和灰色背景。按下后，阴影会变大
              ElevatedButton(
                child: const Text("normal"),
                onPressed: () {
                  gl.d("elevated button pressed");
                  Fluttertoast.showToast(
                      msg: "elevated button pressed",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
              ),
              // 2.文本按钮
              TextButton(
                child: const Text("normal"),
                onPressed: () {
                  Fluttertoast.showToast(msg: "text button pressed");
                  gl.d("text button pressed");
                },
              ),
              // 3.外边框按钮
              OutlinedButton(
                child: const Text("normal"),
                onPressed: () {
                  Fluttertoast.showToast(msg: "outlined button pressed");
                },
              ),
              // 4.带图标的按钮
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {
                  Fluttertoast.showToast(msg: "icon button pressed");
                },
              ),

              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text("发送"),
                onPressed: () {
                  Fluttertoast.showToast(msg: "发送");
                },
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("添加"),
                onPressed: () {
                  Fluttertoast.showToast(msg: "添加");
                },
              ),
              TextButton.icon(
                icon: const Icon(Icons.info),
                label: const Text("详情"),
                onPressed: () {
                  Fluttertoast.showToast(msg: "详情");
                },
              ),
            ],
          ),
        ));
  }
}
