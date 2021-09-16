import 'package:flutter/material.dart';

class PowerTag extends StatelessWidget {
  List<String> powers;

  PowerTag(this.powers);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 35,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, idx) {
            return Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 92, 101, 1.0),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1 ,color: Colors.white)),
              child: Center(
                  child: Text(
                powers[idx],
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)
              )),
            );
          },
          separatorBuilder: (context, idx) => SizedBox(
                width: 25,
              ),
          itemCount: powers.length),
    );
  }
}
