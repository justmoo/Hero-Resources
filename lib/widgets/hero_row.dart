import 'package:flutter/material.dart';
import 'package:hero_resource/models/awesome_hero.dart';

class HeroWidget extends StatelessWidget {
  AwesomeHero _hero;
  HeroWidget(this._hero);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 2
      ),
      height: MediaQuery.of(context).size.height * 0.08 ,
        margin: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 5),
                  blurRadius: 6)
            ]),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_hero.name),
            Text(_hero.miniDescription),
            Text(_hero.rate.toString()),
          ],
        ));
  }
}
