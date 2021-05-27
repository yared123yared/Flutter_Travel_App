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
                        bottom:0,
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
                                  image: AssetImage("assets/images/image3.jpg"),
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


                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.07,
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
