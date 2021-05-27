import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/DUMMY_PLACES.dart';
import 'package:travel_app/Widget/SinglePlace.dart';


import '../Widget/popular_place.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(
            vertical: height * 0.07,
            horizontal: width * 0.04),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

           children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                      Text("Explore", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height / width  * 20
                      ),),
                   IconButton(icon:Icon(Icons.filter,color: Colors.black,),
                       onPressed: null)

                 ],
               ),


             SizedBox(height: height * 0.04,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Sights",style: TextStyle(
                     fontSize: height / width  * 8,
                   color: Colors.blue
                 ),),

                 SizedBox(width: width*0.12,),
                 Text("Tours",style: TextStyle(
                 fontSize: height / width  * 8
                 )),
                 SizedBox(width: width*0.12,),
                 Text("Adventures",style: TextStyle(
                     fontSize: height / width  * 8
                 )),

               ],
             ),
          SizedBox(height: height *0.005,),
             Container(
               alignment: Alignment.topLeft,
                 margin: EdgeInsets.symmetric(vertical: 0,horizontal: width * 0.05),
                 child: Icon(Icons.circle,size: 12,color: Colors.blue,
                 )),
             SizedBox(height: height*0.05,),
            Container(

              alignment: Alignment.topLeft,
                child: Text("23 Sights",style: TextStyle(
                fontSize: height / width  * 8
                ))
            ),
  SizedBox(height:height * 0.01),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,

               child: Row(
                 children: <Widget>[
                   Container(
                       alignment: Alignment.topLeft,
                       child: SinglePlace(
                           id: DUMMY_PLACES[0].id,
                           imageUrl:  DUMMY_PLACES[0].imageUrl,
                           text1:  DUMMY_PLACES[0].text1,
                           text2: DUMMY_PLACES[0].text2
                       )
                   ),


                   Container(
                       alignment: Alignment.topLeft,
                       child: SinglePlace(
                           id: DUMMY_PLACES[1].id,
                           imageUrl:  DUMMY_PLACES[1].imageUrl,
                           text1:  DUMMY_PLACES[1].text1,
                           text2: DUMMY_PLACES[1].text2
                       )
                   ),
                   Container(
                       alignment: Alignment.topLeft,
                       child: SinglePlace(
                           id: DUMMY_PLACES[2].id,
                           imageUrl:  DUMMY_PLACES[2].imageUrl,
                           text1:  DUMMY_PLACES[2].text1,
                           text2: DUMMY_PLACES[2].text2
                       )
                   ),

                 ],
               ),
             ),

            SizedBox(height: height * 0.025,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Popular", style: TextStyle(
                fontSize:  height / width  * 8,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
            ),
            SizedBox(height: height * 0.015,),

            PopularPlace(id: "1",title: "European Tour",imageUrl: 'image4.jpg',)


           ],
          ),
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [

            BottomNavigationBarItem(
              title: Text('Favorites'),
              icon: Container(
                  height: height * 0.045,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(Icons.home,color: Colors.white,size: height/width * 13,)
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Music'),
              icon: Icon(Icons.search,color: Colors.black,size: height/width * 13),
            ),
            BottomNavigationBarItem(
              title: Text('Places'),
              icon: Icon(Icons.save,color: Colors.black,size: height/width * 13),
            ),
            BottomNavigationBarItem(
              title: Text('News'),
              icon: Icon(Icons.library_books, color: Colors.black,size: height/width * 13),
            ),
          ],
        )
    );
  }
}
