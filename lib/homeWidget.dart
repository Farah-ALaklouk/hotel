import 'package:flutter/material.dart';
import 'package:hotel/homeModel.dart';
class HomeWidget extends StatelessWidget {
  HomeModel1 homeModel;
  

 HomeWidget(this.homeModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(homeModel.name ?? '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),),
              SizedBox(height: 15,),
              Text(homeModel.description ?? ''),
              SizedBox(height: 20,),
               Text( homeModel.pictrue ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),
              Row(
                children: [
                SizedBox(height: 20,),
              ...homeModel.anotherView?.map((e) {
                return Row(children: [
                  Text(e.image ?? '',),
                ],);
              }).toList() ??
                  [],
              SizedBox(height: 30,)
                
                ],
              
              ),
               
            ],

            ),

          )
      ],
    );
  }
}