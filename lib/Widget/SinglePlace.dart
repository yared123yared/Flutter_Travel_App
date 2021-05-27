import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:travel_app/Screen/place_detail.dart';

import 'star_icon.dart';

class SinglePlace extends StatelessWidget {
  final String id;
  final String text1;
  final String text2;
  final String imageUrl;


  SinglePlace({
    @required this.id,
    @required this.text1,
    @required this.text2,
    @required this.imageUrl,

  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => this.selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 6,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(
                      (20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/${this.imageUrl}',
                    height: height * 0.38,
                    width: width * 0.7,
//                    height: 350,
//                    width: 280,
                    fit: BoxFit.cover,
                  ),
//                child: Image.network(this.imageUrl, ),
                ),
                Positioned(
                    top: height * 0.02,
                    right: width * 0.02,
                    child: Container(
                      height: height * 0.055,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Colors.blue,
                          size: height/width * 13,
                        ),
                      ),
                    )),
                Positioned(
                  bottom: height * 0.05,
                  left: width * 0.055,
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      children: [
//                      buildRating(this.rating),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star_half),


                          ],
                        ),
                        SizedBox(
//                          height: 10,
                        height: height * 0.02,
                        ),
                        Text(
                          this.text1,
                          style: TextStyle(
                            fontSize:height/width * 12,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
//                        SizedBox(
//                          height: height * 0.00005,
//                        ),
                        Text(
                          this.text2,
                          style: TextStyle(
                            fontSize:height/width * 12,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }



  void selectMeal(BuildContext context){
//    Navigator.of(context).pushNamed(PlaceDetail.routeName,
//        arguments: this.id
//    );

    Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft,duration: Duration(milliseconds: 500),child: PlaceDetail(id: this.id,)));

  }
}
