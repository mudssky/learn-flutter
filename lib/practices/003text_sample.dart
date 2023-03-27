// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  const TextSample({super.key});

  final String title = "003text_sample";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 设置文本默认样式的widget，最外面套一层，子节点中的文本都会继承
        body: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.black,
            // color: Colors.red,
            fontSize: 20.0,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "1.Hello world",
                  textAlign: TextAlign.left,
                ),
                // 溢出处理
                Text(
                  "2.Hello world! I'm Jack. " * 4,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                // 字体大小缩放
                const Text(
                  "3.Hello world",
                  textScaleFactor: 1.5,
                ),
                // 对齐方式，参考系式字符widget本身，也就是文本长度大于text容器宽度才有意义
                Text(
                  "4.${"Hello world " * 6}", //字符串重复六次
                  textAlign: TextAlign.center,
                ),
                // TextStyle,字体样式相关设置,指定文本显示的样式如颜色、字体、粗细、背景等
                Text(
                  "5.Hello world",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      height: 1.2,
                      fontFamily: "Courier",
                      background: Paint()..color = Colors.yellow,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed),
                ),
                // 6 Textspan,就相当于span，可以对一个text分成不同部分设置不同的样式
                const Text.rich(TextSpan(children: [
                  TextSpan(text: "6.Home: "),
                  TextSpan(
                    text: "https://flutterchina.club",
                    style: TextStyle(color: Colors.blue),
                  ),
                ]))
              ],
            ),
          ),
        ));
  }
}
