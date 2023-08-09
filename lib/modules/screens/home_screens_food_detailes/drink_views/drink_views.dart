import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/models/drinks_models.dart';

class BrinkViews extends StatefulWidget {
  const BrinkViews({Key? key}) : super(key: key);

  @override
  State<BrinkViews> createState() => _BrinkViewsState();
}

class _BrinkViewsState extends State<BrinkViews> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInLeft(child: Text("Drink")),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,)
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.68
            ),
            itemCount: Drink.length,
            itemBuilder: (context, index) {
              return FadeInDown(
                child: Container(
                  padding: EdgeInsets.only(bottom: 10.0,left: 04.0,right: 04.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("${Drink[index].imagUrl}"),
                                fit: BoxFit.fill
                            ),
                          ),
                          //child: Image.asset(),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text("${Drink[index].titre}",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                      SizedBox(height: 03.0,),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                                  TextSpan(text: "${Drink[index].prix}",style: TextStyle(color: Colors.black)),

                                ]
                            ),
                          ),

                          Spacer(),
                          CircleAvatar(
                            child:Center(
                              child: Icon(CupertinoIcons.cart,size: 15),
                            ),
                            radius: 15,
                          )
                        ],
                      )

                    ],
                  ),
                ),
              );

            },
          ),
        ),
      ),
    );
  }
}
