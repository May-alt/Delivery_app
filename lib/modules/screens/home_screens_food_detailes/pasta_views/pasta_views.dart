
import 'package:Delevery_app/modules/screens/home_screens_food_detailes/pasta_views/pasta_food_detailles/detailles_pasta_views.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/models/pasta_models.dart';

class PastaViews extends StatefulWidget {
  const PastaViews({Key? key}) : super(key: key);

  @override
  State<PastaViews> createState() => _PastaViewsState();
}

class _PastaViewsState extends State<PastaViews> {






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: FadeInLeft(child: Text("Pasta")),
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
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.68
            ),
            itemCount: pastas.length,
            itemBuilder: (context, index) {
              return FadeInDown(
                child: Container(
                  padding: EdgeInsets.only(bottom: 10.0,left: 05.0,right: 05.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                DetaillesPastaViews(
                                  image_detailles: pastas[index].image,
                                  titre_detailles: pastas[index].titre,
                                  prix_detailles: pastas[index].prix,
                                  tCuisant_detailles: pastas[index].tCuisant,
                                  time_detailles: pastas[index].time,
                                  Ingredients: pastas[index].Ingredients,

                                )));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("${pastas[index].image}"),
                                  fit: BoxFit.cover
                              ),
                            ),
                            //child: Image.asset(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text("${pastas[index].titre}"),
                      SizedBox(height: 05.0,),

                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                                  TextSpan(text: "${pastas[index].prix}",style: TextStyle(color: Colors.black)),

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
                      ),

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

