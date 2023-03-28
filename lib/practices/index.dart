import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/logger/index.dart';
import 'package:learn_flutter/practices/002counter_provider.dart';
import 'package:learn_flutter/practices/003text_sample.dart';

import '001counter.dart';
import '004button_sample.dart';
import '005image_sample.dart';
import '006image_sample2.dart';
import '007icon_sample.dart';
import '008switch_checkbox.dart';

class RouterItem {
  late String path;
  late Widget constructor;
  RouterItem(this.path, this.constructor);
}

final List<RouterItem> practiceList = [
  RouterItem('001counter', const Counter()),
  RouterItem('002counter_provider', const CounterP()),
  RouterItem('003text_sample', const TextSample()),
  RouterItem('004button_sample', const ButtonSample()),
  RouterItem('005image_sample', const ImageSample()),
  RouterItem('006image_sample2', const ImageSample2()),
  RouterItem('007icon_sample', const IconSample()),
  RouterItem('008switch_checkbox', const SwitchCheckbox()),
];

class PracticeIndex extends StatelessWidget {
  const PracticeIndex({super.key});
  final baseUrl = "/practices";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("练习")),
      body: Wrap(
        children: practiceList
            .map((e) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        gl.d("${e.path} button pressed");
                        var newpath = "$baseUrl/${e.path}";
                        context.push(newpath);
                        gl.d("go to $newpath");
                      },
                      child: Text(e.path)),
                ))
            .toList(),
      ),
    );
  }
}
