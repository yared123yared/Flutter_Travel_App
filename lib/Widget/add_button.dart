import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/styles.dart';

import 'custom_rect_tween.dart';

//import 'package:popup_card/styles.dart';
const String _heroAddTodo = 'add-todo-hero';

class AddTodoPopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
  const AddTodoPopupCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddTodo,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin, end: end);
          },
          child: Container(
            height: height,
            width: width,
//            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * 0.7,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: height * 0.35,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(
                                (20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        bottom: height * 0.07,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.4,
//                          alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/image1.jpg"),
                                fit: BoxFit.cover,
                              ),
//                    color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(
                                  (20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(

                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: height * 0.25,
                              width: width,
//                              color: Colors.red,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
//                                crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          alignment: Alignment.center,
                                          child: Text("Excursion", style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 12
                                          ),)
                                      ),
                                      
                                      SizedBox(height: 15,),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text("Lighthouse", style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                        ),),
                                      ),
                                      SizedBox(height: 15,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Time: ", style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.black,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 12
                                          ),),
                                          Text("24 Nov, 10:00 AM ", style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                              fontSize: 12


                                          ),),
                                          Text(".  Person: ", style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                            decoration: TextDecoration.none,
                                            color: Colors.black,
                                              fontSize: 12
                                          ),),
                                          Text("3",style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontSize: 12,
                                            fontWeight: FontWeight.w100,
                                          ), )
                                        ],
                                      ),
                                      SizedBox(height: 15,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Duration:",style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 12
                                          ),),
                                          Text("4 hours", style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12


                                          ),),
                                          Text(".   Price", style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 12
                                          ),),
                                          Text("\$60",style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12


                                          ),)

                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Divider(

                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        alignment: Alignment.center,
                                        child: Text("Open Excursion",style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,



                                        ) ),
                                      ),




                                    ],
                                  ),
                              ),

//
                            ),
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                GestureDetector(
                  onTap: ()=> {
                    Navigator.of(context).pop()
                  },
                  child: Container(
                    height: height * 0.07,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(
                          (40),
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: height / width * 8,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                )

//                        Positioned(
//                            bottom: height * 0.0002,
//                            child: Container(
//                              height: height ,
//                              width: width ,
//                              decoration: BoxDecoration(
//                                color: Colors.blue
//                              ),
//                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
