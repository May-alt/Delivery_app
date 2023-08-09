import 'package:Delevery_app/modules/screens/home_screens_food_detailes/burger_views/burger_food_detailles/detailles_burger_views.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/models/burger_models.dart';


class BurgerViews extends StatefulWidget {
  const BurgerViews({Key? key}) : super(key: key);

  @override
  State<BurgerViews> createState() => _BurgerViewsState();
}

class _BurgerViewsState extends State<BurgerViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInLeft(child: Text("Burgeur")),
        
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
            itemCount:burgers.length,
            itemBuilder: (context, index) {
              return FadeInDown(
                child: Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                DetaillesBurderViews(
                                    Ingredients: burgers[index].Ingredients,
                                    tCuisant_detailles: burgers[index].tCuisant,
                                    time_detailles:burgers[index].time,
                                    prix_detailles:burgers[index].prix,
                                    titre_detailles: burgers[index].titre,
                                    image_detailles: burgers[index].image
                                ),));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("${burgers[index].image}"),
                                  fit: BoxFit.fill
                              ),
                            ),
                            //child: Image.asset(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text("${burgers[index].titre}"),
                      SizedBox(height: 05.0,),
                      // Text("Mozzarella"),
                      // SizedBox(height: 03.0,),
                      RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: "\$ ",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                              TextSpan(text: "${burgers[index].prix}",style: TextStyle(color: Colors.black)),

                            ]
                        ),
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
