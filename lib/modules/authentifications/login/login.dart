import 'package:Delevery_app/modules/authentifications/register/register.dart';
import 'package:Delevery_app/modules/lyouts_main.dart';
import 'package:Delevery_app/utils/colors/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:animate_do/animate_do.dart';


class LoginViews extends StatefulWidget {
  const LoginViews({Key? key}) : super(key: key);

  @override
  State<LoginViews> createState() => _LoginViewsState();
}

class _LoginViewsState extends State<LoginViews> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  //function password Show
  bool IspasswordShow = true;
  //Loading
  bool loading = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: ReusPaddingAll(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FadeInDown(
                  child: Container(
                    height: 300,
                    child: Image.asset("assets/images/logo1.png",),
                    //  color: Colors.amber,
                  ),
                ),


                FadeInUp(
                  delay: Duration(milliseconds: 800),
                  duration: Duration(milliseconds: 1500),
                  child: Form(
                    key: formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [

                            reusTextFormFiled(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value){
                                  if (value == null || value.isEmpty ||
                                      !value.contains('@')) {
                                    return " email Is Empty";
                                  }
                                },
                                prefixIcon:Icon(Icons.email,color: COrange),
                                controller: emailController,
                                hintText: "Foulen_Ben Foulen@gmail.com",
                            ),
                            SizedBox(height: 20,),


                            reusTextFormFiled(
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value){
                                  if (value == null || value.isEmpty ||
                                      value.length < 6) {
                                    return " Password Is Empty";
                                  }
                                },

                                prefixIcon: Icon(Icons.lock,color:COrange),
                                controller: passwordController,
                                hintText: "012345678",
                                obscureText: true,
                                sufixicon: Icons.remove_red_eye,
                                iconsColor: COrange,
                                SufixPresVisibal: (){}
                            ),

                            //SizedBox(height: 20.0,),
                            Align(
                              alignment: AlignmentDirectional.topEnd,
                              child: TextButton(
                                onPressed: (){ },
                                child: Text("Forget password?",style: TextStyle(color: Colors.black54,fontSize: 14),),
                              ),
                            ),
                            SizedBox(height: 20.0,),



                            reusAuthButtom(
                                onPressed:(){
                                  if(formkey.currentState!.validate()){
                                    print(emailController);
                                    print(passwordController);
                                    NavToAndRemove(context, LyoutsMain());
                                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LyoutsMain(),));
                                  }
                                },
                                text: "Sign In"
                            ),


                          ],
                        ),
                      ),
                  ),
                ),

                SizedBox(height: 20.0,),

                reusTexyRowAuthNav(
                    text: "Don't have an account?",
                    btntext: "Sign Up",
                    onPressed: (){
                      NavToAotherPage(context, RegisterViews());
                    },
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
