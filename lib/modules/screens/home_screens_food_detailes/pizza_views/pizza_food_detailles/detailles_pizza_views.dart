import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetaillesPizzaViews extends StatelessWidget {
  final titre_detailles;
  final image_detailles;
  final prix_detailles;
  final tCuisant_detailles;
  final time_detailles;
  final List<String> Ingredients;

  DetaillesPizzaViews({
    Key? key,
    required this.image_detailles,
    required this.titre_detailles,
    required this.Ingredients,
    required this.prix_detailles,
    required this.tCuisant_detailles,
    required this.time_detailles,
  }) : super(key: key);

  final List<String> options = ['Mini', 'Regular', 'big'];

  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 350,
                //  color: Colors.orange.shade100,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor:  Colors.orange.shade100,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.orange.shade100,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                          ]),
                      Expanded(
                        child: Image.asset(image_detailles),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    CupertinoIcons.add,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              titre_detailles,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\$ ",
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              TextSpan(
                                  text: prix_detailles,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                            ]),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 15.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.timer,
                                size: 16,
                              ),
                              SizedBox(
                                width: 02.0,
                              ),
                              Text(time_detailles, style: TextStyle(fontSize: 14))
                            ],
                          ),
                          SizedBox(width: 20,),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.flame_fill,
                                color: Colors.deepOrange,
                                size: 16,
                              ),
                              SizedBox(
                                width: 02.0,
                              ),
                              Text(
                                tCuisant_detailles,
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size :",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          DropdownButton<String>(
                            hint: Text("choose "),
                            value: valueChoose,
                            items: options
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              // setState(() {
                              //   // value = valueChoose;
                              //   valueChoose = value as String;
                              //   print(valueChoose);
                              // });
                            },
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      Text(
                        "indredients : ",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      // Row(
                      //   children: [
                      //     Text("1 : ",style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
                      //     Text("onion ",style: TextStyle(color: Colors.black,fontSize: 16),),
                      //   ],),
                      // Row(
                      //   children: [
                      //     Text("2 : ",style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
                      //     Text("Tomate ",style: TextStyle(color: Colors.black,fontSize: 16),),
                      //   ],),
                      // Row(
                      //   children: [
                      //     Text("3 : ",style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
                      //     Text("sauce ",style: TextStyle(color: Colors.black,fontSize: 16),),
                      //   ],),

                      /************** afficher les Recettes du produits ***************************/
                      for (var recette in Ingredients) ...{
                        Text(recette, style: TextStyle(fontSize: 16)),
                      }
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Colors.orange.shade100,
          child: Icon(
            CupertinoIcons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {}),
    );
  }
}
