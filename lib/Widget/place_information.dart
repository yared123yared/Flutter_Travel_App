import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:travel_app/Widget/slider.dart';

class PlaceInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(width * 0.1),
      width: width,
      height: height * 0.41,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(
            (40),
          ),
        ),
      ),



      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Newheaven Lighthouse",style: TextStyle(
            fontSize:18,
            fontWeight:FontWeight.bold
          ),),
          Text("in Edingburgh, UNited kingdom",style: TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold
          ),),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Available: ", style: TextStyle(
                fontSize:15,
                fontWeight: FontWeight.w200,
              ),),
              Text(
                "10:00 - 18:00  -  Mon-Sat",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Duration: ",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200
              ),

              ),
              Text("4 hours", style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(width: width* 0.1,),
              Text("Price: ", style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 15
              ),),
              Text("\$20", style: TextStyle(
                  fontSize:15,
                  fontWeight:FontWeight.w200
              ),),

            ],
          ),

          SizedBox(height: 25,),
          SliderWidget(),
          SizedBox(height: 5,),
          Text(
           "3 Persons", style: TextStyle(
            fontSize: 10,
             fontWeight: FontWeight.w200
          ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total: \$60", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              Container(
                height: height * 0.068,
                width: width*0.4,
                child: RaisedButton(
//                  onPressed: ()=>showModalBottomSheet(
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                    ),
//                    context: context,
//                    builder: (context) => Container(
//                      height: height*0.8,
//                      child: Scaffold(
//                        body: Text("Hello yared"),
//                      ),
//                    ),
//                  ),
                onPressed: ()=> showMaterialModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                    ),
                    builder: (BuildContext context) {
                      // return your layout
                      return Container(
                        height: height * 0.8,
                        padding: EdgeInsets.all(height * 0.01),
                        child:Column(
                          children: [
                            Row(
                              children: [
Text("X"),

                              ],
                            )
                          ],
                        ),
                      );
                    }),
//                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text("Book Now", style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              )
            ],
          )



        ],
      ),
    );
  }


}
