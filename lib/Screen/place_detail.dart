import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/DUMMY_PLACES.dart';
import 'package:travel_app/Widget/place_information.dart';

class PlaceDetail extends StatelessWidget {
  static const routeName='/place-detail';

  final String id;
   String text1;
   String text2;
   String imageUrl;
   int rating;


PlaceDetail({@required this.id});


//  PlaceDetail({
//    @required this.id,
//    @required this.text1,
//    @required this.text2,
//    @required this.imageUrl,
//    @required this.rating,
//  });


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
//    final placeId=ModalRoute.of(context).settings.arguments as String;
//    print("place Id: $placeId");
    final selectedMeal=DUMMY_PLACES.firstWhere((place) => place.id==this.id);
    print("Selected Meal: ${selectedMeal.text1}");
    this.text1=selectedMeal.text1;
    this.text2=selectedMeal.text2;
    this.imageUrl=selectedMeal.imageUrl;
//    this.id=selectedMeal.id;
    return Scaffold(
      body: Stack(

            children: [
         Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
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
                      height: height * 0.65,
                      width: double.infinity,
//                    height: 350,
//                    width: 280,
                      fit: BoxFit.cover,
                    ),
//                child: Image.network(this.imageUrl, ),
                  ),
                  Positioned(
                  top: height * 0.09,
//                right: width * 0.07,
                  child: Container(
                    width: width,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_outlined, color: Colors.white,size: 40,),
                        ),
                        IconButton(
                          icon: Icon(Icons.ios_share, color: Colors.white,size: 40,),
                        )
                      ],
                    ),
                  ),
                  ),

                  Positioned(
                    bottom: height * 0.09,
                    left: width * 0.055,
                    child: Container(
                      width: width * 0.6,
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        children: [
//                      buildRating(this.rating),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("4.6", style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("(313)",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200
                              ),)

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              this.text1,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              this.text2,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
              Positioned(
                  top: height * 0.55,
                  right: width * 0.07,
                  child: Container(
                    height: height * 0.065,
                    width: width * 0.14,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      icon: Icon(
                        Icons.save,
                        color: Colors.blue,
                        size: 24,
                      ),
                    ),
                  )),
    Positioned(
    bottom: 0,
//    right: width * 0.02,

    child:PlaceInformation()
    )

    ]

      ),
    );
  }
}
