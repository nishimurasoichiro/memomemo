import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


   Map saves  ={
    "メモ1" : "メモです",
    "メモ2" : "メモ2です"
  };

   void Save (String title,String memo){
    saves.addAll({title:memo});
  }

  @override
  Widget build(BuildContext context) {

    String title = "タイトル";
    String memo = "メモ";

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
             SizedBox(
               width: 400,
               child: TextField(
                 decoration: InputDecoration(
                   hintText: 'タイトル',
                 ),
                 onChanged: (text) {
                   title = text;
                 },
               ),
             ),
            const Center(
              child: SizedBox(
                height: 10,
                width: 10,
              ),
            ),
             SizedBox(
               width: 400,
               child: TextField(
                 keyboardType: TextInputType.multiline, //改行できるようにする
                 maxLines: null,
                 decoration: InputDecoration(//ヒントつける
                     hintText: 'メモ',
                 ),
                 onChanged: (text) {
                   memo = text;
                 },
               ),
             ),
            const Center(
              child: SizedBox(
                height: 10,
                width: 10,
              ),
            ),

            TextButton(
                onPressed: (){
                  setState(() {
                    saves.addAll({title:memo});
                  });
                },
                child: Text("保存")
            ),
            Text("メモ一覧"),

            SizedBox(
              height: 400,
              width: 400,
              child: ListView.builder(
                itemCount: saves.length,
                itemBuilder: (context, index) {
                  var key = saves.keys.elementAt(index);
                  return Container(
                      decoration: const BoxDecoration(
                      border: Border(
                      bottom: BorderSide(),
                      ),
                      ),
                    child: SizedBox(
                      height: 30,
                      width: 350,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                            child:Text("$key"),
                          ),
                          const SizedBox(child:Text(":"),),
                          SizedBox(child: Text("${saves[key]}")),
                        ],
                      ),
                    ),
                  );

                },
              ),
            ),
    ]
          ),
    );
  }
}
