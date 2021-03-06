import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(minhaAplicacao());
}

Widget minhaAplicacao() {
  return MaterialApp(
    title: "Olá Mundo !!",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Meu APP"),
      ),
      body: Column(
        children: [
          Text("Olá Mundo !!"),
          Text("karina"),
          Expanded(child: Image.network("https://images.pexels.com/photos/4942113/pexels-photo-4942113.jpeg")),
          Expanded(child: Image.asset("images/paisagem.jpg", fit: BoxFit.fill,)),
          Row(
            children: [
              Expanded(child: GestureDetector(
                  child: Image.asset("images/paisagem.jpg"),
                  onTap: (){
                    print("Oieee");
                  },
              )
              ),
              SizedBox(width: 8,),
              Expanded(child: Image.asset("images/paisagem.jpg")),
            ],
          )
        ],
      ),
    ),
  );
}
