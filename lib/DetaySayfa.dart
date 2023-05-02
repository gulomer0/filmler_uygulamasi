import 'package:filmler_uygulamasi/Filmler.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film;

  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.film_ad),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 400,
                child: Image.asset("resimler/${widget.film.film_resim}")),
            Text(widget.film.film_yil.toString(),style: TextStyle(fontSize: 30),),
            Text(widget.film.yonetmen.yonetmen_ad,style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
