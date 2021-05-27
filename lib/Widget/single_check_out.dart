import 'package:flutter/material.dart';

class SingleCheckOut extends StatelessWidget {
  final String beginTime;
  final String endTime;
  final String status;
  final bool isChecked;

  SingleCheckOut({
    @required this.beginTime,
    @required this.endTime,
    @required this.isChecked,
    @required this.status,
});


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(

      child: Column(
        children: [
          ListTile(
            title: Text("${this.beginTime} - ${this.endTime}",  style: TextStyle(
                fontSize: height / width * 7,
                fontWeight: FontWeight.bold),),
            subtitle: Text("${this.status}", style: TextStyle(
              fontSize: height / width * 6,
            ), ),
            trailing: IconButton(
              icon: this.isChecked ? Icon(
                  Icons.check_circle_sharp,
                  color:Colors.blue
              ): Icon(
                Icons.circle,
                color: Colors.white10,
              )
            ),
          ),

        ],
      ),

    );
  }
}
