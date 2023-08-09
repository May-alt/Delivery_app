import 'package:Delevery_app/utils/colors/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BuildCartListWidgets extends StatefulWidget {
  const BuildCartListWidgets({Key? key}) : super(key: key);

  @override
  State<BuildCartListWidgets> createState() => _BuildCartListWidgetsState();
}

class _BuildCartListWidgetsState extends State<BuildCartListWidgets> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(height: 10.0,),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade100,offset: Offset(0, 2),blurRadius: 1)
                    ]
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/burg/brg3.jpg",width: 100,),

                      Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Beef Burgeur",
                              style: TextStyle(fontSize: 16,color: CBlack,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 08.0,),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: "\$ ",style: TextStyle(color: COrange,fontSize: 14)),
                                    TextSpan(text: "6.99",style: TextStyle(color: CBlack,fontSize: 14)),

                                  ]
                              ),
                            ),

                            SizedBox(height: 08.0,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text("Regular"),

                                Center(
                                  child: Container(
                                    //width: 80,
                                    height:25 ,
                                    padding: EdgeInsets.only(left: 05.0),
                                    child: Row(
                                      children: [

                                        CircleAvatar(
                                          child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(
                                                CupertinoIcons.minus,
                                                size: 10,
                                                color: CBlack,)
                                          ),
                                          backgroundColor: CWhite,
                                        ),

                                        Text(
                                          "4",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),

                                        CircleAvatar(
                                          child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(
                                                CupertinoIcons.add,
                                                size: 10,
                                                color: Colors.black,)
                                          ),
                                          backgroundColor: CWhite,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
        },

    );
  }
}
