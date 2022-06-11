// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'view_model.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

////////////////////////////////////////////////////////////

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  /// 長文テキスト
  String text = """
  ウクライナ軍が民生用のドローンを改造して、小型の爆弾を搭載できるようにしていることが分かりました。
　ウクライナ西部では、ドローン部隊を養成するための講習が行われていて、ANNが外国メディアで初めて取材を許可されました。
　講師の多くは元映画プロデューサーなど民間から採用されていて、これまでに200人以上が講習を終え、前線で偵察活動などを行っています。
　東部戦線のドローン部隊兵士（23）：「一日でも早く部隊に戻って、ここで学んだ新しい知識を戦闘任務で実践したい」
　ウクライナ軍が改造した民生用ドローンに小型の爆弾を搭載してロシア軍を攻撃していることが分かりました。
　特殊なセンサーを付けることで20万円程度で購入できる民生機でも、遠隔操作で爆弾を投下できます。
　ドローンの多くはスウェーデンなど国外から提供されたもので、10日にも新たに3機が激戦地の東部ハルキウへ送られます。





  ウクライナ軍が民生用のドローンを改造して、小型の爆弾を搭載できるようにしていることが分かりました。
　ウクライナ西部では、ドローン部隊を養成するための講習が行われていて、ANNが外国メディアで初めて取材を許可されました。
　講師の多くは元映画プロデューサーなど民間から採用されていて、これまでに200人以上が講習を終え、前線で偵察活動などを行っています。
　東部戦線のドローン部隊兵士（23）：「一日でも早く部隊に戻って、ここで学んだ新しい知識を戦闘任務で実践したい」
　ウクライナ軍が改造した民生用ドローンに小型の爆弾を搭載してロシア軍を攻撃していることが分かりました。
　特殊なセンサーを付けることで20万円程度で購入できる民生機でも、遠隔操作で爆弾を投下できます。
　ドローンの多くはスウェーデンなど国外から提供されたもので、10日にも新たに3機が激戦地の東部ハルキウへ送られます。





  """;

  /// 表示行数
  int maxLines = 3;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final areaOpenState = ref.watch(areaOpenProvider);

    final areaOpenViewModel = ref.watch(areaOpenProvider.notifier);

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              Text(
                text,
                overflow: areaOpenState ? null : TextOverflow.fade,
                maxLines: areaOpenState ? null : maxLines,
              ),
              TextButton(
                onPressed: () {
                  areaOpenViewModel.toggleOpen();
                },
                child: Text((areaOpenState) ? 'close' : 'open'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
