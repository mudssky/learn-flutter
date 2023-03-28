// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImageSample extends StatelessWidget {
  const ImageSample({super.key});

  final String title = "005image_sample";

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
              // 加载images文件夹下的文件,指定宽度
              const Image(image: AssetImage("images/scene.jpg"), width: 100.0),
              // 从网络加载图片
              const Image(
                image: NetworkImage("https://picsum.photos/200/300"),
                // width: 100.0,
              ),
              // 快捷的网络加载方法
              Image.network(
                "https://picsum.photos/200/200",
                width: 100.0,
              ),
              // color指定混合色，而colorBlendMode指定混合模式，下面是一个简单的示例：
              const Image(
                image: AssetImage("images/scene.jpg"),
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
              ),
              // 指定图片的重复规则
              const Image(
                image: AssetImage("images/scene.jpg"),
                width: 100.0,
                height: 200.0,
                repeat: ImageRepeat.repeatY,
              )
            ],
          ),
        ));
  }
}
