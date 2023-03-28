import 'package:get/get.dart';
import 'package:level1/model/product.dart';

//product의 상태를 관리하기 위한 GetXController생성
class ShoppingController extends GetxController{
  //GetX 식으로 프로덕트 목록을 가져오면 observable하도록 .obs를 붙이도록 함.
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async{
    await Future.delayed(Duration(seconds: 2));
    var productData = [
      Product(
        id:1,
        price : 30,
        productDescription: 'some description about product',
        productName: 'Mouse'
      ),
      Product(
          id:2,
          price : 40,
          productDescription: 'some description about product',
          productName: 'KeyBoard'
      ),
      Product(
          id:3,
          price : 620,
          productDescription: 'some description about product',
          productName: 'Monitor'
      ),
      Product(
          id:4,
          price : 80,
          productDescription: 'some description about product',
          productName: 'Ram'
      )
    ];

    products.assignAll(productData);
  }
}