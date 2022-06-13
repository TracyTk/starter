import 'package:flutter/material.dart';
import '../models/article.dart';
import '../widgets/article_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Widgets'),
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   // childAspectRatio: 0.95,
      //   children: [
      //     ArticleCard(article: articles[0]),
      //     ArticleCard(article: articles[1]),
      //     ArticleCard(article: articles[2]),
      //   ],
      // ),

      // body: ListView(
      //   children: [
      //     ArticleCard(article: articles[0]),
      //     ArticleCard(article: articles[1]),
      //     ArticleCard(article: articles[2]),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return ArticleCard(article: articles[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
