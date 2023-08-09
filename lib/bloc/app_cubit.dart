import 'package:Delevery_app/modules/screens/about/about.dart';
import 'package:Delevery_app/modules/screens/cart/cart.dart';
import 'package:Delevery_app/modules/screens/favorite/favorite.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Delevery_app/modules/screens/home/home.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

 int currentindex = 0;

 List Screens =[
   HomeView(),
   CartViews(),
   FavoriteView(),
   AboutView()
 ];

 void changeNavBar(int index){
   currentindex = index;
   emit(NavigationBottomBarState());
 }

}
