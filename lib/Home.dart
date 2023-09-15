import 'package:flutter/material.dart';
import 'package:hotel/homeModel.dart';
import 'package:hotel/hotel_data.dart';

import 'homeWidget.dart';

class Home extends StatelessWidget {
  
  const Home({super.key});
  List<HomeModel1>homeMapToHomeModel1Converter(){
    return homeView.map((e)=>HomeModel1(e)).toList();
  
  }
  List <Widget>homeModelToWidgetConverter(){
  List<HomeModel1>homeModels=homeMapToHomeModel1Converter();

    List<Widget>homeWidgets=homeModels.map((e)=>HomeWidget(e)).toList();
    return homeWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: AppBar(
          leading:Icon(Icons.arrow_back_ios) ,
         actions:[
          IconButton(
          icon:Icon(Icons.more_vert),
            onPressed:(){}, ),],
          flexibleSpace:ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) ),
               child: Image.network(
                "https://images.unsplash.com/photo-1589923158776-cb4485d99fd6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1528&q=80",
                fit: BoxFit.fitWidth,),)),
          ) ,
        
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
           children: homeModelToWidgetConverter(),
          
         
          ),
          
        ),
      
    
      ),
     bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
             Text(
              "More in home hotel",
             style:TextStyle(
                  color:Colors.blueGrey,
                  fontSize:20,
              ),
              
              ),
              IconButton(
                onPressed:(){}, 
              icon:Icon(Icons.arrow_forward_ios),
              ),
            
            ],
          ),
        ),

    
    );
    
  }
}