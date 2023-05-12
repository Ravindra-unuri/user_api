import 'package:flutter/material.dart';
import 'package:user_api/full_desc.dart';
import 'package:user_api/model/article.dart';

class NewsListView extends StatelessWidget {
  List<Article> articles;
  NewsListView({Key? key,required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, index){
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => fullNews(snapshot: articles[index])),
              );
            },
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage('${articles[index].avatar}')),
              title: Text('${articles[index].email}'),
              subtitle: Text('${articles[index].first_name} ${articles[index].last_name}'),
              trailing: Text('${articles[index].id}'),
            ),
          );
        });
  }
}