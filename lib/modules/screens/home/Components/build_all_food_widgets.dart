import 'package:Delevery_app/modules/screens/home_screens_food_detailes/burger_views/burger_views.dart';
import 'package:Delevery_app/modules/screens/home_screens_food_detailes/drink_views/drink_views.dart';
import 'package:Delevery_app/modules/screens/home_screens_food_detailes/pasta_views/pasta_views.dart';
import 'package:Delevery_app/modules/screens/home_screens_food_detailes/pizza_views/pizza_views.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';

class BuildAllFoodWidgets extends StatefulWidget {
  const BuildAllFoodWidgets({Key? key}) : super(key: key);

  @override
  State<BuildAllFoodWidgets> createState() => _BuildAllFoodWidgetsState();
}

class _BuildAllFoodWidgetsState extends State<BuildAllFoodWidgets> {
  final List AllFood = [
    {
      'type': "Pizza",
      "titre": "Pizza",
      'imagUrl': "assets/img/pizza_img.png",
      "Time": "25-35 minutes",
      "Star": "15 K",
    },
    {
      'type': "Burger",
      "titre": "Burger",
      'imagUrl': "assets/img/brg6.png",
      "Time": "25-35 minutes",
      "Star": "8 K",
    },
    {
      'type': "pasta",
      "titre": "italian-bolognese-pasta",
      'imagUrl': "assets/img/pasta.jpg",
      "Time": "25-35 minutes",
      "Star": "8 K",
    },
    {
      'type': "drink",
      "titre": "fresh-drink-",
      'imagUrl': "assets/img/drink.jpg",
      "Time": "25-35 minutes",
      "Star": "8 K",
    },
  ];

  void navigateToPage(Map<String, dynamic> data) {
    switch (data['type']) {
      case 'Pizza':
        NavToAotherPage(context,PizzaViews());
        break;
      case 'Burger':
        NavToAotherPage(context,BurgerViews());
        break;
      case 'pasta':
        NavToAotherPage(context,PastaViews());
        break;
      case 'drink':
        NavToAotherPage(context,BrinkViews());
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(
        height: 10.0,
      ),
      itemCount: AllFood.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {

            navigateToPage(AllFood[index]);

            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PastaViews()));
          },
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("${AllFood[index]["imagUrl"]}"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AllFood[index]["titre"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 27, letterSpacing: 1.2, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 16,
                          ),
                          Text(
                            AllFood[index]["Star"],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1.2),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            AllFood[index]["Time"],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1.2),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
