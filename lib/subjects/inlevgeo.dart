import 'package:flutter/material.dart';
import '../pages/maintpo.dart';
import 'package:smdumpshit/data.dart';

final List<Map<String, String>> intgeocourses = [
  {
    'title': 'Vectors',
    'articles': '10 articles',
    'image': 'images/rr.png',
    'next': '/vect'
  },
  {
    'title': 'Angles',
    'articles': '15 articles',
    'image': 'images/rr.png',
    'next': '/angl'
  },
  {
    'title': 'Trigonometry',
    'articles': '12 articles',
    'image': 'images/rr.png',
    'next': '/trig'
  },
  {
    'title': 'Pythagores theorem',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/py'
  },
  {
    'title': 'Thales theorem',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/thales'
  },
];

class intGeo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final courses = CourseTitle;
    return Scaffold(
      bottomNavigationBar: bNavBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Userbar(), returnButt('HOME / INTERMEDIATE LEVEL')],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Algebra courses ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 155,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 15,
                          childAspectRatio: 1.5,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Course(
                            intgeocourses[index]['title'],
                            intgeocourses[index]['articles'],
                            intgeocourses[index]['image'],
                            intgeocourses[index]['next']);
                      },
                      itemCount: intgeocourses.length,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
