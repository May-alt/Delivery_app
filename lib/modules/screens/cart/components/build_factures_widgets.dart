import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:flutter/material.dart';

class BuildFacturesWidgets extends StatefulWidget {
  const BuildFacturesWidgets({Key? key}) : super(key: key);

  @override
  State<BuildFacturesWidgets> createState() => _BuildFacturesWidgetsState();
}

class _BuildFacturesWidgetsState extends State<BuildFacturesWidgets> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4.0,
                offset: Offset(0, 2),
              )
            ]

          ),
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                Container(
                  color: Colors.grey.shade100,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Order Details ",
                          style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Items :",
                            style: TextStyle(color: Colors.black,fontSize: 16,),
                          ),
                          Text("2")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Price :",
                            style: TextStyle(color: Colors.black,fontSize: 16,),),
                          Text("\$ 80.85")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery :",style: TextStyle(color: Colors.black,fontSize: 16,),),
                          Text("Free")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discount :",style: TextStyle(color: Colors.black,fontSize: 16,),),
                          Text("02:50")
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      Divider(color: Colors.orange,height: 2,thickness: 2,endIndent: 10,indent: 10),

                      SizedBox(height: 15.0,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total :",
                            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          Text("\$ 82:50",
                            style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.0,),





                reusButton(
                    onTap: (){},
                    text: "Buy Now"
                ),


                SizedBox(height: 20.0,),
                reusButton(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    text: "Annuler Order"
                ),
                



              ],
            ),
          ),
        ),
      ),
    );
  }
}
