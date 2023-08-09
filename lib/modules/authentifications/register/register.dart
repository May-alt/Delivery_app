import 'package:Delevery_app/modules/authentifications/login/login.dart';
import 'package:Delevery_app/modules/lyouts_main.dart';
import 'package:Delevery_app/utils/colors/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:animate_do/animate_do.dart';


class RegisterViews extends StatefulWidget {
  const RegisterViews({Key? key}) : super(key: key);

  @override
  State<RegisterViews> createState() => _RegisterViewsState();
}

class _RegisterViewsState extends State<RegisterViews> {
  TextEditingController nameController = TextEditingController();
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
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if (value == null || value.isEmpty )
                                       {
                                    return " name Is Empty";
                                  }
                                },
                                prefixIcon:Icon(Icons.person,color: COrange),
                                controller: nameController,
                                hintText: "Foulen_Ben"
                            ),

                            SizedBox(height: 20,),

                            reusTextFormFiled(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value){
                                  if (value == null || value.isEmpty ||
                                      !value.contains('@')) {
                                    return " email Is Empty";
                                  }
                                },
                                prefixIcon:Icon(Icons.email,color:COrange),
                                controller: emailController,
                                hintText: "Foulen_Ben Foulen@gmail.com"
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
                                prefixIcon: Icon(Icons.lock,color: COrange),
                                controller: passwordController,
                                hintText: "012345678",
                                obscureText: true,
                                sufixicon: Icons.remove_red_eye,
                                iconsColor: Colors.orange,
                                SufixPresVisibal: (){}
                            ),

                            

                            SizedBox(height: 20.0,),



                            reusAuthButtom(
                                onPressed: (){
                                  if(formkey.currentState!.validate()){
                                    print(emailController);
                                    print(passwordController);
                                  }
                                },
                                text: "Sign Up"
                            ),
                          ],
                        ),
                      ),
                  ),
                ),

                SizedBox(height: 20.0,),


                reusTexyRowAuthNav(
                  text: "You have an account?",
                  btntext: "Sign In",
                  onPressed: (){
                    NavToAotherPage(context, LoginViews());
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
