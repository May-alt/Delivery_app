
import 'package:Delevery_app/models/pizza_models.dart';
import 'package:Delevery_app/modules/screens/home_screens_food_detailes/pizza_views/pizza_food_detailles/detailles_pizza_views.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


class PizzaViews extends StatefulWidget {
  const PizzaViews({Key? key}) : super(key: key);

  @override
  State<PizzaViews> createState() => _PizzaViewsState();
}

class _PizzaViewsState extends State<PizzaViews> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: FadeInLeft(child: Text("Pizza")),
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,)
        ),
      ),



      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.68
                ),
               // itemCount: PizzaFood.length,
                itemCount:pizza.length,
                itemBuilder: (context, index) {
                
                  return FadeInDown(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0,left: 05.0,right: 05.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                //     DetaillesPizzaViews(
                                //       image_detailles: pizza[index].image,
                                //       titre_detailles: pizza[index].titre,
                                //       prix_detailles: pizza[index].prix,
                                //       tCuisant_detailles: pizza[index].tCuisant,
                                //       time_detailles: pizza[index].time,
                                //       Ingredients: pizza[index].Ingredients,
                                //
                                //     )));

                                NavToAotherPage(context,
                                    DetaillesPizzaViews(
                                      image_detailles: pizza[index].image,
                                      titre_detailles: pizza[index].titre,
                                      prix_detailles: pizza[index].prix,
                                      tCuisant_detailles: pizza[index].tCuisant,
                                      time_detailles: pizza[index].time,
                                      Ingredients: pizza[index].Ingredients,
                                    )
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("${pizza[index].image}"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                                //child: Image.asset(),
                              ),
                            ),
                          ),
                          SizedBox(height: 12.0,),
                          Text("${pizza[index].titre}",
                          style: TextStyle(color: Colors.black,fontSize: 16),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 08.0,),
                          // Text("${PizzaFood[index]["prix"]}"),
                          // SizedBox(height: 03.0,),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(text: "\$ ",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                                      TextSpan(text: "${pizza[index].prix}",style: TextStyle(color: Colors.black)),

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
