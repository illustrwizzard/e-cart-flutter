import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpageanimated/Animation/FadeAnimation.dart';
import 'package:loginpageanimated/ecommerce/Shoes.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage1(),
  ),
);
class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Shoes",style: TextStyle(
          color: Colors.black,fontSize: 25
        ),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications_none,color: Colors.black,)),

          IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_cart,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(aspectRatio: 2/1,
                    child:Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("All",
                          style: TextStyle(fontSize: 20),),
                      ),

                    ) ,
                    ),


                    AspectRatio(aspectRatio: 2.2/1,
                      child:Container(
                        margin: EdgeInsets.only(right: 10),

                        child: Center(
                          child: Text("Sneakers",
                            style: TextStyle(fontSize: 17),),
                        ),

                      ) ,
                    ),

                    AspectRatio(aspectRatio: 2.2/1,
                      child:Container(
                        margin: EdgeInsets.only(right: 10),

                        child: Center(
                          child: Text("Football",
                            style: TextStyle(fontSize: 17),),
                        ),

                      ) ,
                    ),


                    AspectRatio(aspectRatio: 2.2/1,
                      child:Container(
                        margin: EdgeInsets.only(right: 10),

                        child: Center(
                          child: Text("Soccer",
                            style: TextStyle(fontSize: 17),),
                        ),

                      ) ,
                    ),



                    AspectRatio(aspectRatio: 2.2/1,
                      child:Container(
                        margin: EdgeInsets.only(right: 10),

                        child: Center(
                          child: Text("Golf",
                            style: TextStyle(fontSize: 17),),
                        ),

                      ) ,
                    ),

                    AspectRatio(aspectRatio: 2.2/1,
                      child:Container(
                        margin: EdgeInsets.only(right: 10),

                        child: Center(
                          child: Text("Baseball",
                            style: TextStyle(fontSize: 17),),
                        ),

                      ) ,
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),
          FadeAnimation(1.3,makeItem(image: 'assets/eimages/one.jpg',tag: 'red',context: context),),
          FadeAnimation(1.4,makeItem(image: 'assets/eimages/two.jpg',tag: 'blue',context: context),),
          FadeAnimation(1.5, makeItem(image: 'assets/eimages/three.jpg',tag: 'white',context: context),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image,tag,context}){
    return Hero(tag: tag,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes(image: image,)));
          },
          child: Container(
            height: 250,
            width:double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 18,
                  offset: Offset(0,10),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Sneakers",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        
                        SizedBox(height: 10,),
                        
                        Text("Nike", style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border,size: 20,),
                      ),
                    ),
                  ],
                ),
                
                Text("100\$",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
              ],
            ),


          ),
        ),);
  }
}
