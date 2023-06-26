import 'package:flutter/material.dart';
import 'package:loginpageanimated/ecommerce/billing/billingg.dart';
class AddressSection extends StatefulWidget {
  const AddressSection({Key? key}) : super(key: key);

  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {
  int _currentSteps=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 7,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,color: Colors.green,
          ),
        ),
        title: const Text("Order Summery",style: TextStyle(
            color: Colors.black,fontSize: 25
        ),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
          child: Column(
            
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20,),
              Text("Deliver To",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
              SizedBox(height: 20,),
              Text("Chamakalatil house,\nPuramattom\nPathanamthitta\Kerala,India",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
              SizedBox(height: 10,),
              TextButton(onPressed: (){},
                  child: Container(
                    padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Text("Change", style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white),)),),
              Card(
                
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    title: Text,

                    
                    leading: Container(

                      width: 100,
                      height: 250,
                      decoration: BoxDecoration(


                        image: DecorationImage(

                          image: AssetImage(

                            "assets/eimages/one.jpg",

                          ),
                         fit: BoxFit.fill,
                          //fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                  ),),




            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar1(),
    );
  }

  // List<Step>getSteps()=>[
  //   Step(title: Text('Info'), content: Container()),
  //   Step(title: Text('Address'), content: Container()),
  //   Step(title: Text('Payment'), content: Container()),
  // ];

}

class BottomNavigationBar1 extends StatelessWidget {
  const BottomNavigationBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      color: Colors.blueGrey.shade100,
      child: BottomAppBar(
        elevation: 0,
        color: Colors.blueGrey.shade100,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("\$10272",style: TextStyle(
                color: Colors.black,fontSize: 25
            ),),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BillingSection()));

              },
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                height: 50,

                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),

                ),
                child:  Center(
                  child: Text("Continue",style: TextStyle(
                      color: Colors.white,fontSize: 20
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }

}
