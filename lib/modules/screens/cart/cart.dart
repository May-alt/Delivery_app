import 'package:Delevery_app/modules/screens/cart/components/build_cart_list_widgets.dart';
import 'package:Delevery_app/modules/screens/cart/components/build_factures_widgets.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartViews extends StatefulWidget {
  const CartViews({Key? key}) : super(key: key);

  @override
  State<CartViews> createState() => _CartViewsState();
}

class _CartViewsState extends State<CartViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Expanded(
                child: BuildCartListWidgets(),
            ),







            reusButton(onTap:  (){
              showBottomSheet(
                context: context,
                builder: (context) {
                  return BuildFacturesWidgets();
                },
              );
            },
                text: "Buy Now"
            ),


          ],
        ),
      ),


         );
  }
}
