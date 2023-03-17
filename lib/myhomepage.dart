import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:  Text("メモ帳"),
      ),
      body: Column(
          children:  [
            const Center(
              child: Text(
                "新規メモ作成",
                style: TextStyle(fontSize: 50),
              ),
            ),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'タイトル',
                ),),
            ),
            const Center(
              child: SizedBox(
                height: 10,
                width: 10,
              ),
            ),
            const Center(
              child: TextField(
                keyboardType: TextInputType.multiline, //改行できるようにする
                maxLines: null,
                decoration: InputDecoration(//ヒントつける
                    hintText: 'メモ',
                    contentPadding: EdgeInsets.all(20),  //大きさ
                    border: OutlineInputBorder() //枠

                ),
              ),
            ),
            const Center(
              child: SizedBox(
                height: 10,
                width: 10,
              ),
            ),
            Center(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '名前',
                ),
                onChanged:(text) {
                },
              ),
            ),
          ]),
    );
  }
}
