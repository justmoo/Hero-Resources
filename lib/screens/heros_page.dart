import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hero_resource/models/awesome_hero.dart';
import 'package:hero_resource/provider/heros-provider.dart';
import 'package:hero_resource/widgets/hero_row.dart';
import 'package:provider/provider.dart';

class HerosPage extends StatefulWidget {
  final ValueChanged<AwesomeHero> onTap;
  HerosPage(this.onTap);
  @override
  _HerosPageState createState() => _HerosPageState(onTap);
}

class _HerosPageState extends State<HerosPage> {
  final ValueChanged<AwesomeHero> onTap;
  _HerosPageState(this.onTap);

  bool sortOptions = false;
  int index = 0;
  List<String> sorting_list_otions = ["By Name", "By Power", "By Rating"];

  @override
  void initState() {
    sortOptions = true;
  }

  @override
  Widget build(BuildContext context) {
    var hero_provider = Provider.of<HeroProvider>(context);

    var hero_list_default = hero_provider.hero_list;
    return Scaffold(
        body: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Color.fromRGBO(252, 92, 101, 1.0),
              ),
              padding: EdgeInsets.all(30),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("Hero Resources",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  style: TextStyle(fontSize: 20, height: 1),
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30.0)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 12),
              ]),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, idx) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            index = idx;
                          });
                        },
                        child: Text(sorting_list_otions[idx],
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: index == idx
                                    ? Color.fromRGBO(252, 92, 101, 1.0)
                                    : Colors.grey)),
                      );
                    },
                    separatorBuilder: (context, idx) => SizedBox(width: 40),
                    itemCount: sorting_list_otions.length),
              )),
          Expanded(
            flex: 10,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: hero_list_default.length,
                itemBuilder: (context, idx) {
                  return GestureDetector(
                      onTap: () => onTap(hero_list_default[idx]), child: HeroWidget(hero_list_default[idx]));
                }),
          ),
        ]),
      ),
    ));
  }
}
