// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SwitchCheckbox extends StatelessWidget {
  const SwitchCheckbox({super.key});

  final String title = "008switch_checkbox";

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
            children: const [SwitchAndCheckBoxTestRoute()],
          ),
        ));
  }
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  const SwitchAndCheckBoxTestRoute({super.key});

  @override
  SwitchAndCheckBoxTestRouteState createState() =>
      SwitchAndCheckBoxTestRouteState();
}

class SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected, //当前状态
          onChanged: (value) {
            //重新构建页面
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.red, //选中时的颜色
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value!;
            });
          },
        )
      ],
    );
  }
}
