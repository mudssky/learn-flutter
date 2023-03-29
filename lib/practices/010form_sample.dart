// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../logger/index.dart';

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  FormSampleState createState() => FormSampleState();
}

class FormSampleState extends State<FormSample> {
  final String title = "010form_sample";
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();

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
              Form(
                key: _formKey, //设置globalKey，用于后面获取FormState
                // 用户交互后触发自动校验
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      controller: _unameController,
                      decoration: const InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",
                        icon: Icon(Icons.person),
                      ),
                      // 校验用户名
                      validator: (v) {
                        return v!.trim().isNotEmpty ? null : "用户名不能为空";
                      },
                      onSaved: (v) {
                        gl.d("save username ${v!}");
                      },
                    ),
                    TextFormField(
                      controller: _pwdController,
                      decoration: const InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        icon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                      //校验密码
                      validator: (v) {
                        return v!.trim().length > 5 ? null : "密码不能少于6位";
                      },
                      onSaved: (v) {
                        // 保存的逻辑，后面可以调用formState。save全部执行
                        gl.d('save pwd${v!}');
                      },
                    ),
                    // 登录按钮
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ElevatedButton(
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text("登录"),
                              ),
                              onPressed: () {
                                // 通过_formKey.currentState 获取FormState后，
                                // 调用validate()方法校验用户名密码是否合法，校验
                                // 通过后再提交数据。
                                gl.d("pressed");
                                if ((_formKey.currentState as FormState)
                                    .validate()) {
                                  //验证通过提交数据
                                  // gl.d(_formKey.currentState.toString());
                                  // print(_formKey.currentState.toString());
                                  (_formKey.currentState as FormState).save();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
