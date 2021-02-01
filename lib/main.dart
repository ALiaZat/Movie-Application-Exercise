import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Test composition')),
          body: ListView(
            children: [
              MovieItem(image: 'm1.jpg', title: 'Parasite', description: "Drama, Action", rating: 9.1),
              MovieItem(image: 'm2.jpg', title: 'Avengers', description: "ACtion", rating: 7.5,),
              MovieItem(image: 'm3.jpg', title: 'Shawshank', description: "Drama", rating: 9.4,)

            ],
          )
      ),


    );
  }
}

class MovieItem extends StatelessWidget{

  final String image;
  final String title;
  final String description;
  final double rating;

  MovieItem({@required this.image,@required this.title,@required this.description,@required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 120,
      child: Card(
        child: Row(
          children: [
            Image.asset('assets/images/' + this.image),
            Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(this.description),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(this.rating.toString()),
                      ),
                      Icon(Icons.add)

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );


  }

}
