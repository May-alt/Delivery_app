import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  final List FavoriteFood = [
    {"titre" :"Pizza",'imagUrl' :"assets/img/pizza_img.png","Time":"25-35 minutes","Star":"15 K",},
    {"titre" :"Burger",'imagUrl' :"assets/img/brg6.png","Time":"25-35 minutes","Star":"8 K",},
    {"titre" :"italian-bolognese-pasta",'imagUrl' :"assets/img/pasta.jpg","Time":"25-35 minutes","Star":"8 K",},
    {"titre" :"fresh-drink-",'imagUrl' :"assets/img/drink.jpg","Time":"25-35 minutes","Star":"8 K",},
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: GridView.custom(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  pattern: [
                    WovenGridTile(1),
                    WovenGridTile(
                      6 / 7.5,
                      crossAxisRatio: 0.9,
                      alignment: AlignmentDirectional.topCenter,
                    ),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: FavoriteFood.length,
                  (context, index) => FavoriteBody(FavoriteFood,index),
                ),
              ))),
    );
  }


  Widget FavoriteBody(FavoriteFood,index) => FadeInUp(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.orange)

        // color: Colors.deepPurple,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    color: Colors.deepPurple,
                    image: DecorationImage(
                        image: AssetImage(FavoriteFood[index]["imagUrl"]),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(FavoriteFood[index]["titre"],
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite,color: Colors.red,),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );

}


