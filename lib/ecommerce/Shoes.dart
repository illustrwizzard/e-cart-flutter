

import 'package:flutter/material.dart';
import 'package:loginpageanimated/Animation/FadeAnimation.dart';
import 'package:loginpageanimated/ecommerce/billing/address.dart';

class Shoes extends StatefulWidget {
  final String image;

  const Shoes({Key? key, required this.image}) : super(key: key);

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {

  String selected = "first";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'red',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width:double.infinity,


            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.image),
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
            child: Stack(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: FadeAnimation(1.5,Container(
                        child: Icon(
                          Icons.arrow_back_ios,color: Colors.white,
                        ),
                      ),),

                    ),

          Column(
            children: [
              FadeAnimation(1.5,Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(Icons.favorite_border,size: 20,),
                          ),
                        ),),

              FadeAnimation(1.5,Container(
                margin: const EdgeInsets.only(top: 20),
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(Icons.add_shopping_cart,size: 20,),
                ),
              ),),
            ],
          ),
                  ],
                ),
                ),
                Positioned(
                  bottom: 0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    child:FadeAnimation(1,Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.9),
                            Colors.black.withOpacity(.0),

                          ],
                        ),

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        FadeAnimation(1.3,Text("Sneakers",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),),
                          SizedBox(height: 25,),
                      FadeAnimation(1.4,Text("Size",style: TextStyle(color: Colors.white,fontSize: 20)),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              FadeAnimation(1.7,GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selected = 'first';
                                  });

                                },
                                child: Container(

                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: selected == 'first' ?boxx():null,


                                  child: Center(
                                    child: Text('40',style: TextStyle(fontWeight: FontWeight.bold,color: selected == 'first' ?Colors.black:Colors.white),),

                                  ),
                                ),
                              ),),

                              FadeAnimation(1.7,GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selected = 'second';
                                  });

                                },
                                child: Container(

                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: selected == 'second' ?boxx():null,


                                  child: Center(
                                    child: Text('42',style: TextStyle(fontWeight: FontWeight.bold,color: selected == 'second' ?Colors.black:Colors.white),),

                                  ),
                                ),
                              ),),

                              FadeAnimation(1.7,GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selected = 'third';
                                  });

                                },
                                child: Container(

                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: selected == 'third' ?boxx():null,


                                  child: Center(
                                    child: Text('44',style: TextStyle(fontWeight: FontWeight.bold,color: selected == 'third' ?Colors.black:Colors.white),),

                                  ),
                                ),
                              ),),


                                FadeAnimation(1.7,GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selected = 'fourth';
                                    });

                                  },
                                  child: Container(

                                    width: 40,
                                    height: 40,
                                    margin: const EdgeInsets.only(right: 20),
                                    decoration: selected == 'fourth' ?boxx():null,


                                    child: Center(
                                      child: Text('46',style: TextStyle(fontWeight: FontWeight.bold,color: selected == 'fourth' ?Colors.black:Colors.white),),

                                    ),
                                  ),
                                ),),

                            ],
                          ),
                          const SizedBox(height: 60,),


                      FadeAnimation(2,
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressSection()));
                          },
                        child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Center(
                                child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold),),

                              ),
                            ),
                      ),),
                          const SizedBox(height: 30,),



                        ],

                      ),
                    ),),
                ),

              ],
            ),


          ),

        ),

      ),

    );
  }
  BoxDecoration boxx(){
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
    );
  }


}
