// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../logger/index.dart';

class TextFieldSample extends StatefulWidget {
  @override
  _TextFieldSampleState createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  final String title = "009text_field";

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwdController = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

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
              Column(
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    controller: _usernameController,
                    decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",
                        prefixIcon: Icon(Icons.person)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        prefixIcon: Icon(Icons.lock)),
                    controller: _passwdController,
                    obscureText: true,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      autofocus: true,
                      focusNode: focusNode1, //关联focusNode1
                      decoration: InputDecoration(labelText: "input1"),
                    ),
                    TextField(
                      focusNode: focusNode2, //关联focusNode2
                      decoration: InputDecoration(labelText: "input2"),
                    ),
                    Builder(
                      builder: (ctx) {
                        return Column(
                          children: <Widget>[
                            ElevatedButton(
                              child: Text("移动焦点"),
                              onPressed: () {
                                //将焦点从第一个TextField移到第二个TextField
                                // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                                // 这是第二种写法
                                if (null == focusScopeNode) {
                                  focusScopeNode = FocusScope.of(context);
                                }
                                focusScopeNode?.requestFocus(focusNode2);
                              },
                            ),
                            ElevatedButton(
                              child: Text("隐藏键盘"),
                              onPressed: () {
                                // 当所有编辑框都失去焦点时键盘就会收起
                                focusNode1.unfocus();
                                focusNode2.unfocus();
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  @override
  void initState() {
    // 可以通过controller监听文本域
    _usernameController.addListener(() {
      print(_usernameController.text);
    });
  }

  @override
  void didUpdateWidget(TextFieldSample oldWidget) {
    gl.d(_usernameController.text);
    gl.d(_passwdController.text);
  }
}
