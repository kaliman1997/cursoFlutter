import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsetsDirectional.only(top: 10),
      child: Swiper(
        itemWidth: _screenSize.width * 0.70,
        itemHeight: _screenSize.height * 0.50,

        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: new Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: peliculas.length,
        layout: SwiperLayout.STACK,
        //pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
  }
}
