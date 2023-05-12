import 'package:flutter/material.dart';
import 'package:user_api/Custom/newslist.dart';
import 'package:user_api/model/article.dart';
import 'package:user_api/service/apiService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.pink
        ),
        home: const MyHomePage()

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User API')),
      backgroundColor: Colors.pinkAccent,
      body: FutureBuilder(
        future: ApiService().getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot){
          if(snapshot.hasData){
            return NewsListView(articles: snapshot.data!);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}