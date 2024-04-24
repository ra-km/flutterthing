import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Userbar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('My Favorite',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => favouritCourse(),
                      itemCount: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // Align(alignment: Alignment.bottomCenter, child: buttum_bar()),
      ])),
    );
  }
}

class favouritCourse extends StatelessWidget {
  const favouritCourse({super.key});

  @override
  Widget build(BuildContext context) {
    final cardA = GlobalKey<ExpansionTileCardState>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: ExpansionTileCard(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          elevation: 0,
          key: cardA,
          leading: Icon(
            Icons.favorite,
            color: redd,
          ),
          title: const Text('"Algebra fondation"',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: const Text(
            'beginner',
            style: TextStyle(
                color: Color.fromRGBO(138, 144, 148, 1),
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Container(
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(10, 139, 148, 1)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(26)))),
                          child: Text('Learn More'),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(10, 139, 148, 1)),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                    color: Color.fromRGBO(10, 139, 148, 1)),
                              ),
                            ),
                            child: Text('Unfavorite')),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteCourse extends StatelessWidget {
  final IconShapeController controller = IconShapeController();
  final String course;
  FavoriteCourse(this.course, this.courselvl);

  final String courselvl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 195, 193, 193),
                  blurRadius: 300.0,
                  //spreadRadius: 0.5,
                  offset: Offset(0, 2))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: redd,
                        )),
                    SizedBox(width: 10),
                    Text(
                      course,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    IconButton(onPressed: () {
                      controller.toggleShape();
                    }, icon: Obx(() {
                      return controller.updown.value
                          ? Icon(
                              Icons.keyboard_arrow_up_rounded,
                            )
                          : Icon(Icons.expand_more_rounded);
                    }))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      courselvl,
                      style: TextStyle(
                          color: Color.fromRGBO(138, 144, 148, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Obx(() {
          return controller.Expanded.value
              ? Container(
                  height: 62,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(10, 139, 148, 1)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(26)))),
                            child: Text('Learn More'),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(10, 139, 148, 1)),
                                side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color: Color.fromRGBO(10, 139, 148, 1)),
                                ),
                              ),
                              child: Text('Unfavorite')),
                        )
                      ],
                    ),
                  ))
              : SizedBox();
        }),
      ],
    );
  }
}
