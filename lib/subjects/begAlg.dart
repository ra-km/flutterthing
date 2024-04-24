import 'package:flutter/material.dart';
import '../pages/maintpo.dart';
import 'package:smdumpshit/data.dart';

final List<Map<String, String>> begalgcourses = [
  {
    'title': 'Numbers nad Degits',
    'articles': '10 articles',
    'image': 'images/rr.png',
    'next': '/numb'
  },
  {
    'title': 'Addition and Substruction',
    'articles': '15 articles',
    'image': 'images/crs/R.jpg',
    'next': '/add'
  },
  {
    'title': 'Multiplication and Division',
    'articles': '12 articles',
    'image': 'images/crs/multiplication.jpg',
    'next': '/mul'
  },
  {
    'title': 'Logic Operations',
    'articles': '6 articles',
    'image': 'images/crs/comparing.jpg',
    'next': '/comp'
  },
];

class begAlgebra extends StatelessWidget {
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
                children: [Userbar(), returnButt('HOME / BIGNNER LEVEL')],
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
                            begalgcourses[index]['title'],
                            begalgcourses[index]['articles'],
                            begalgcourses[index]['image'],
                            begalgcourses[index]['next']);
                      },
                      itemCount: begalgcourses.length,
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
