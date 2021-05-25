import 'package:flutter/material.dart';

class PopularPlace extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;


  PopularPlace({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

//        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(
                      (10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(
                            (10),
                          ),
                        ),
                        child: Image.asset(
                            'assets/images/${this.imageUrl}',
                            height: height * 0.09,
                            width: width * 0.2,
//                    height: 350,
//                    width: 280,
                          fit: BoxFit.cover,
                          ),
                        ),
                      SizedBox(width: width * 0.05,),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          Text("${this.title}", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:  height / width  * 8,

                          ),),
                          Text("14 april-25 april 2021", style: TextStyle(
                            fontWeight: FontWeight.w200
                          ),)
                        ],
                      ),


                    ],
                  ),
//                child: Image.network(this.imageUrl, ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
