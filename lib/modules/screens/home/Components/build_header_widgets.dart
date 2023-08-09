import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


class BuildHeaderWidgets extends StatelessWidget {
  const BuildHeaderWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.orange,
      ),
      child:Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      child: Text("Get special discount",
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                    ),

                    SizedBox(height: 05.0,),

                    FadeInDown(
                      child: Text("Up To 75%",
                        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),

                    SizedBox(height: 10.0,),
                    FadeInLeft(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade300,
                            elevation: 0.0,
                          ),
                          onPressed: (){},
                          child: Text("achetez maintenet ",
                            style: TextStyle(color: Colors.white,fontSize: 16),)
                      ),
                    )



                  ],
                ),
              ),
            ),
            FadeInRight(
              child: Image.asset("assets/images/pizza.png",
                fit:BoxFit.cover,),
            ),
          ]
      ),
    );
  }
}
