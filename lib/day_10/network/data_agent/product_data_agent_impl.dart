import 'package:dio/dio.dart';
import 'package:first_app/day_10/data/vos/product_vo/product_vo.dart';
import 'package:first_app/day_10/network/data_agent/product_data_agent.dart';
import 'package:first_app/day_10/network/api/product_api.dart';

class ProductDataAgentImpl extends ProductDataAgent {
  late ProductApi _productApi;

  ProductDataAgentImpl() {
    _productApi = ProductApi(Dio());
  }

  @override
  Future<List<ProductVo>?> getProduct() {
    return _productApi
        .getProductResponse()
        .asStream()
        .map((event) => event.data)
        .first;
  }
}
