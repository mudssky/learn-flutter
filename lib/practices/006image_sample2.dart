// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImageSample2 extends StatelessWidget {
  const ImageSample2({super.key});

  final String title = "006image_sample2";

  @override
  Widget build(BuildContext context) {
    var img = const AssetImage("images/scene.jpg");
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 设置文本默认样式的widget，最外面套一层，子节点中的文本都会继承
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Image(
                image: img,
                height: 50.0,
                width: 100.0,
                // 会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
                fit: BoxFit.fill,
              ),
              Image(
                image: img,
                height: 50,
                width: 50.0,
                // 相当于object-fit contain
                fit: BoxFit.contain,
              ),
              Image(
                image: img,
                width: 100.0,
                height: 50.0,
                // 相当于object-fit cover

                fit: BoxFit.cover,
              ),
              Image(
                image: img,
                width: 100.0,
                height: 50.0,
                // 图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
                fit: BoxFit.fitWidth,
              ),
              Image(
                image: img,
                width: 100.0,
                height: 50.0,
                // 图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
                fit: BoxFit.fitHeight,
              ),
              Image(
                image: img,
                width: 100.0,
                height: 50.0,
                fit: BoxFit.scaleDown,
              ),
              Image(
                image: img,
                height: 50.0,
                width: 100.0,
                fit: BoxFit.none,
              ),
              Image(
                image: img,
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
                fit: BoxFit.fill,
              ),
              Image(
                image: img,
                width: 100.0,
                height: 200.0,
                repeat: ImageRepeat.repeatY,
              )
            ].map((e) {
              return Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 100,
                      child: e,
                    ),
                  ),
                  Text(e.fit.toString())
                ],
              );
            }).toList(),
          ),
        ));
  }
}
