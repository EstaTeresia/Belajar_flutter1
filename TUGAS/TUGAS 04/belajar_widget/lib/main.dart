import'package:flutter/material.dart';

void main (){
  runApp(const HomePage());
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  build (context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          leading: const Icon(Icons.home),
          title: const Text('flutter Widget sederhana')
        ),

        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
            Row(children: const<Widget>[
              Icon(Icons.archive),
              Text('Artikel Terbaru',style:TextStyle(fontWeight: FontWeight.bold))
            ]),
            Card(child: Column(children: <Widget>[
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Borobudur_Temple.jpg/320px-Borobudur_Temple.jpg'),
              const Text('Candi Borobudur')
            ]))
            ],
          )
        )
      )
    );
  }
}         
