import 'package:Delevery_app/utils/colors/colors_app.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/modules/lyouts_main.dart';
import 'package:Delevery_app/modules/authentifications/login/login.dart';
import 'package:animate_do/animate_do.dart';

class OnBordingViews extends StatefulWidget {
  const OnBordingViews({Key? key}) : super(key: key);

  @override
  State<OnBordingViews> createState() => _OnBordingViewsState();
}

class _OnBordingViewsState extends State<OnBordingViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage("assets/images/cooking.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInDown(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "The Fastest In  Delivery",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            fontFamily: "Pacifico",
                          ),
                        ),
                        TextSpan(
                            text: " Food",
                            style: TextStyle(
                              color:COrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              fontFamily: "Pacifico",
                            )),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  FadeInDown(
                    child: Text(
                      "Unlock the joy of Eating, Ordering, and delighting in Every Bitiel",
                      style: TextStyle(color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),


                  FadeInUp(
                    child: InkWell(
                      onTap: () {
                      //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginViews(), ));
                        NavToAndRemove(context, LoginViews());
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color:COrange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
