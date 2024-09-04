import 'package:first_app/day_10/data/vos/product_vo/product_vo.dart';

abstract class ProductModel {
  Future<List<ProductVo>?> getProduct();
}
