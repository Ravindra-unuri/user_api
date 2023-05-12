import 'dart:convert';
import 'package:http/http.dart';
import '../model/article.dart';

class ApiService{
  final endpoint="https://reqres.in/api/users?page=2";
  Future<List<Article>> getArticle() async{
    // Response response = await get(Uri.parse(endpoint));
    Response response = await get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['data'];
      List<Article> article = body.map((dynamic item) => Article.fromJson(item)).toList();
      return article;
    } else {
      throw "Data not found";
    }
  }
}