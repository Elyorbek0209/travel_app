import 'package:flutter/material.dart';

import 'data.dart';

import 'secondpage.dart';




class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: ListView(

        children: <Widget>[

          SizedBox(height: 16.0),

          Padding(

            //HERE 'padding' makes space from edges(left & right side)
            padding: const EdgeInsets.symmetric(horizontal: 24.0),

            child: Row(

              //HERE 'mainAxisAlignment' make a space between the element in row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[

                Column(
                  
                  //HERE 'CrossAxisAlignment' makes from the beginning of the let side
                  crossAxisAlignment: CrossAxisAlignment.start,


                  children: <Widget>[

                    Text(
                      
                      "Search for place",
                    
                      style: TextStyle(

                        color: Colors.black54,

                      ),
                    
                    ),



                    Row(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:<Widget>[

                        Text(
                          
                          'Destination',
                        
                          style: TextStyle(

                            fontWeight: FontWeight.bold,

                            fontSize: 22.0,

                          ),
                        
                        ),

                        Icon(
                          
                          Icons.arrow_drop_down, 
                        
                          color: Colors.black54,

                        ),

                      ]

                    ),



                  ],

                ),


                //---PROFILE OWNER PHOTO BEGINS---

                CircleAvatar(

                  backgroundImage: AssetImage(profileImage),

                ),

                //---END OF THE PROFILE OWNER PHOTO ---


              ],

            ),

          ),


          SizedBox(height: 16.0),


          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 24.0),

            child: Container(


              height: 200.0,

              child: ListView(


                scrollDirection: Axis.horizontal,

                children: data.map((x){


                  return Padding(

                    padding: EdgeInsets.all(8.0),


                    child: GestureDetector(

                      onTap: (){

                        Navigator.push(
                        
                          context, 

                          MaterialPageRoute(

                            builder: (context) => SecondScreen(x)

                          )

                        );

                      },


                    child: Hero(

                      tag: x['image'],

                        child: Container(

                          height: 200.0,

                          width: 140.0,

                          decoration: BoxDecoration(

                            //HERE 'borderRadius' makes photo's curve corner
                            borderRadius: BorderRadius.circular(16.0),

                            image: DecorationImage(

                              //colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                            
                              image: NetworkImage(x['image']),

                              fit: BoxFit.cover

                            ),                      

                          ),



                          child: Column(

                            children:<Widget>[

                              Padding(
                                
                                padding: const EdgeInsets.all(16.0),
                                
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: <Widget>[

                                    Container(),
                                    
                                    Text(

                                      '4.7',

                                      style: TextStyle(

                                        color: Colors.white

                                      ),

                                    )

                                  ],

                                ),
                                
                              ),


                              Spacer(),

                              Text(
                                
                                x['name'],
                              
                                style: TextStyle(

                                  color: Colors.white,

                                  fontSize: 16.0

                                ),
                              
                              ),


                              Text(
                                
                                x['date'],
                              
                                style: TextStyle(

                                  color: Colors.white,

                                  fontSize: 16.0

                                ),
                              
                              )

                              

                            ] 

                          ),
                          

                        ),

                      ),

                    )

                  );

                }).toList(),

              ),

            ),

          ),


          //Here 'SizedBox' gives a Space between Rows
          SizedBox(height: 8.0),

          Padding(

            padding: EdgeInsets.symmetric(horizontal: 16.0),

            child: Text(
              
              'VIEW ALL -',

              style: TextStyle(

                color: Colors.red,

              ),

            ),

          ),


          //Here 'SizedBox' gives a Space between Rows
          SizedBox(height: 32.0),


          Padding(

            padding: EdgeInsets.symmetric(horizontal: 32.0),


            child: Container(
              

              height: 40.0,

              child: ListView(


                scrollDirection: Axis.horizontal,

                children: <Widget>[


                  //-------'POPULAR, NEW, RECOMMENDED, SAVED' BEGINS-------

                  Padding(

                    padding: EdgeInsets.only(right: 16.0),
                   
                    child: Text(
                      
                      'Popular',

                      style: TextStyle(

                        fontSize: 22.0,

                        fontWeight: FontWeight.bold,
                        
                      ),  
                      
                    ),
                  
                  ),



                  Padding(

                    padding: EdgeInsets.only(right: 16.0),
                   
                    child: Text(
                      
                      'New',

                      style: TextStyle(

                        fontSize: 22.0,

                        //fontWeight: FontWeight.bold,
                        
                      ), 
                      
                    ),
                  
                  ),



                  Padding(

                    padding: EdgeInsets.only(right: 16.0),
                   
                    child: Text(
                      
                      'Recommended',
                      
                      style: TextStyle(

                        fontSize: 22.0,

                        //fontWeight: FontWeight.bold,
                        
                      ), 

                    ),
                  
                  ),



                  Padding(

                    padding: EdgeInsets.only(right: 16.0),
                   
                    child: Text(
                      
                      'Saved',

                      style: TextStyle(

                        fontSize: 22.0,

                       // fontWeight: FontWeight.bold,
                        
                      ), 
                    
                    ),
                  
                  ),

                  //-------'POPULAR, NEW, RECOMMENDED, SAVED' BEGINS-------

                ],

              ),

            ),

          ),



          
          Padding(

            padding: EdgeInsets.only(left: 32.0),

            child: Container(

              height: 2.0,

              child: Stack(

                children: <Widget>[


                  Container(

                    color: Colors.black12,

                    height: 4.0,

                    width: double.infinity,

                  ),


                  Container(

                    color: Colors.red,

                    height: 4.0,

                    width: 80.0,

                  ),


                ],

              ),

            ),

          ),


          SizedBox(height: 16.0),


          //-------BOTTOM PICTURES BEGINS-------


          Padding(

            padding: EdgeInsets.symmetric(horizontal: 32.0),

            child: Container(

              height: 256.0,

              width: double.infinity,

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,


                children: <Widget>[


                  Column(


                    children: <Widget>[


                      itemCard(
                      
                        data[0]['image'],
                          
                        data[0]['name'], 
                        
                        data[0]['date'],
                        
                        120.0, 
                        
                        context,
                      
                      ),


                      SizedBox(height: 16.0),


                      itemCard(
                      
                        data[1]['image'],
                          
                        data[1]['name'], 
                        
                        data[1]['date'],
                        
                        120.0, 
                        
                        context,
                      
                      ),


                    ],

                  ),


                  
                   itemCard(
                      
                    data[2]['image'],
                      
                    data[2]['name'], 
                    
                    data[2]['date'],
                    
                    256.0, 
                    
                    context,
                  
                  ),



                ],

              ),

            )

          ),

          //-------BOTTOM PICTURES BEGINS-------


        ],

      ),

    );
  }


  //-------------ITEM CARD BEGINS ------------------

  itemCard(image, title, date, height, context){

    return  Container(

      height: height,

      width: MediaQuery.of(context).size.width / 2 - 42,


      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(16.0),


        image: DecorationImage(


          image: NetworkImage(image),

          fit: BoxFit.cover,

          //colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),

        ),

      ),



      child: Padding(

        padding: EdgeInsets.all(16.0),
        
        child: Column(

          //Here 'Picture's' Text'll start from left side beginning
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Spacer(),


            Text(
              
              title,

              style: TextStyle(

                color: Colors.white,

              ),
              
            ),


            SizedBox(height: 4.0,),


            Text(
              
              date,

              style: TextStyle(

                color: Colors.white54,

              ),
              
            ),


          ],

        ),

      ),


    );

  }

  //-------------ITEM CARD BEGINS ------------------
}