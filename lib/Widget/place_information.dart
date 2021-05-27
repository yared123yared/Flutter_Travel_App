import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:travel_app/Widget/single_check_out.dart';
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Newheaven Lighthouse",
              style: TextStyle(
                  fontSize: height / width * 9, fontWeight: FontWeight.bold),
            ),
            Text(
              "in Edingburgh, UNited kingdom",
              style: TextStyle(
                  fontSize: height / width * 9, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Available: ",
                  style: TextStyle(
                    fontSize: height / width * 7,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  "10:00 - 18:00  -  Mon-Sat",
                  style: TextStyle(
                      fontSize: height / width * 7,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Duration: ",
                  style: TextStyle(
                      fontSize: height / width * 7,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  "4 hours",
                  style: TextStyle(
                      fontSize: height / width * 7,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                Text(
                  "Price: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: height / width * 7,
                  ),
                ),
                Text(
                  "\$20",
                  style: TextStyle(
                      fontSize: height / width * 7,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SliderWidget(),
            SizedBox(
              height: 5,
            ),
            Text(
              "3 Persons",
              style: TextStyle(
                  fontSize: height / width * 5, fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total: \$60",
                  style: TextStyle(
                      fontSize: height / width * 9,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: height * 0.068,
                  width: width * 0.4,
                  child: RaisedButton(
                    onPressed: () => showMaterialModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(40.0)),
                        ),
                        builder: (BuildContext context) {
                          // return your layout
                          return Container(
                            height: height * 0.8,
                            padding: EdgeInsets.all(height * 0.02),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,

                              child: Column(
                                children: [
                                  Container(
                                    child: Column(

                                      children: [
                                        Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [

                                            IconButton(
                                              icon: Icon(
                                                Icons.cancel,
                                                color: Colors.black,
                                                size: height/width * 13,
                                              ),
                                            ),
                                            Text("Booking",style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: height / width * 7,
                                            ),),
                                            Text("Done", style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: height / width * 7,
                                            ),)
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              this.getContainer(context, 'Su', '21', false),
                                              this.getContainer(context, 'Mo', '22', false),
                                              this.getContainer(context, 'Tu', '23', false),
                                              this.getContainer(context, 'Wd', '24', true),
                                              this.getContainer(context, 'Tr', '25', false),
                                              this.getContainer(context, 'Fr', '26', false),
                                              this.getContainer(context, 'Sa', '27', false),
                                            ],
                                          ),

                                        ),
                                        SizedBox(height: 10,),

                                        Divider(
                                          height: 6,
                                          endIndent: 0.0,
                                          indent: 6.0,
                                          thickness: 1.0,

                                        ),

                                      ],
                                    ),
                                  ),


                                  Container(



                                    child: Column(

                                      children: [
                                        SingleCheckOut(
                                          beginTime: "10:00",
                                          endTime: "14:00",
                                          status: "last spot remaining",
                                        ),

                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            color: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)),
                                            child: Text(
                                              "Checkout",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        }),
//                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Book Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget getContainer(BuildContext context, String upperText, String lowerText, bool background){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.13,
      height:width * 0.16,
      padding: EdgeInsets.symmetric(vertical: 9,horizontal: 5),
      decoration: BoxDecoration(
        color: background ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(7),
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
          topRight: Radius.circular(
            (7),
          ),
        ),
      ),

      child: Column(
        children: [
          Text(upperText, style: TextStyle(
            color: background ? Colors.white : Colors.black,
            fontWeight: FontWeight.w200,
          ),),
          SizedBox(height: 3,),
          Text(lowerText,style: TextStyle(
            color: background ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}
