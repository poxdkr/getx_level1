import 'package:get/get.dart';
import 'package:level1/model/product.dart';

class CartController extends GetxController{
  var cartItems = <Product>[].obs;
  //1. totalPrice가 초기화 되지 않았으나, get이후의 값을 받기 위해
  //데이터 타입 이후 get선언 => cartItems.fold(0,(e, item)=> e+item.price
  //fold 메소드는 이전값 e와 엘리먼트의 요소를 계속하여 연산해주기 위한 메소드

  double get totalPrice => cartItems.fold(0, (e, item) => e+item.price);
  int get count => cartItems.length;
  void addToItem(Product product){
    cartItems.add(product);
  }

}