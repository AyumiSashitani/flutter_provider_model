import 'package:flutter/material.dart';
import 'package:flutterprovidermodel/book_list_page.dart';
import 'package:flutterprovidermodel/main_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("テスト"),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.kboyText,
                    style: TextStyle(fontSize: 30),
                  ),
                  RaisedButton(
                    child: Text("ボタン"),
                    onPressed: () {
                      //ボタンが押された時
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BookList()));
                    },
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
