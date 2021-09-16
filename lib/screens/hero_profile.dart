import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hero_resource/models/awesome_hero.dart';
import 'package:hero_resource/widgets/power_tags.dart';

class HeroProfile extends StatelessWidget {
  AwesomeHero _hero;
  HeroProfile(this._hero);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          height: MediaQuery.of(context).size.height / 3,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            width: double.infinity,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text(
                    _hero.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 25,
                  )
                ]),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(_hero.image)),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Color.fromRGBO(252, 92, 101, 1.0),
            ),
          )),
      Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          RatingBar.builder(
            initialRating: _hero.rate,
            minRating: 1,
            direction: Axis.horizontal,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Text(
            _hero.rate.toString(),
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(252, 92, 101, 1.0)),
          )
        ]),
      ),
      Container(
          child: Center(
              child: Text(
        "20,130 ratings",
        style: TextStyle(color: Colors.grey),
      ))),
      Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Text(
              "About",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromRGBO(252, 92, 101, 1.0)),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text(_hero.description,
            style: TextStyle(
              color: Colors.grey,
            )),
      ),

      PowerTag(_hero.powers)
    ])));
  }
}
