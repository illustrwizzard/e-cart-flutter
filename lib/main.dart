import 'package:flutter/material.dart';
import 'package:loginpageanimated/Animation/FadeAnimation.dart';

void main()=> runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
  )
);
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Wrap(
        children: [
          Column(
          children: [
             Container(

              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill,
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width:80,
                      height: 200,
                    child:FadeAnimation(1,Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/light-1.png'),
                        )
                      ),

                  ),
                  )),
                  Positioned(
                    left: 140,
                    width:80,
                    height: 150,
                    child:FadeAnimation(1.3, Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'),
                          )
                      ),

                    ),
                  ),),

                  Positioned(
                    right: 40,
                    top: 40,
                    width:80,
                    height: 150,
                    child:FadeAnimation(1.5, Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/clock.png'),
                          )
                      ),

                    ),
                  ),),

                  Positioned(
                      child:FadeAnimation(1.6, Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Center(
                          child: Text(
                            "Login",style: TextStyle(
                            color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      )
                  ),),

                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, -2),
                          blurRadius: 20.0,
                          offset: Offset(0,10),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey),
                            ),

                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or Phone number",
                              hintStyle: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                        ),

                        FadeAnimation(1.8, Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey)
                            )
                          ),

                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                        ),),



                        const SizedBox(
                          height: 30,
                        ),

                       FadeAnimation(1.8,  Container(
                          height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, -6)
                                ],
                              )
                            ),
                          child: const Center(
                            child: Text("Login", style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,
                            ),
                            ),
                          ),
                        ),),
                        const SizedBox(height: 70,),
                        FadeAnimation(1.8, const Text("Forgot Password?",style: TextStyle(
                          color: Color.fromRGBO(143, 148, 251, 1)
                        ),),),

                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
    ],
      ),
    );
  }
}