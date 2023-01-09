import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'prueba', imageUrl: 'https://www.egames.news/__export/1669725303815/sites/debate/img/2022/11/29/super-mario-bros-movie-4.jpg_1902800913.jpg'),
          SizedBox(height: 10),
          CustomCardType2(name: 'prueba', imageUrl: 'https://i0.wp.com/www.artofvfx.com/wp-content/uploads/2022/10/super_mario_bros_the_movie_ver3_xxlg.jpg'),
          SizedBox(height: 10),
          CustomCardType2(name: 'prueba', imageUrl: 'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2022/11/super-mario.pelicula.jpg'),
        ]
      ),
    );
  }
}