part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}


class NavigationBottomBarState extends AppState{}

//state of get products

class getAllProductLoadingState extends AppState{}
class getAllProductSuccessState extends AppState{}
class getAllProductErrorState extends AppState{}
