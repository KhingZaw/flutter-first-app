import 'package:dio/dio.dart';
import 'package:first_app/day_10/constant/api_constant.dart';
import 'package:first_app/day_10/network/response/product_response/product_response.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class ProductApi {
  //Factory
  factory ProductApi(Dio dio) => _ProductApi(dio);

  @GET(kGetAllProduct)
  Future<ProductResponse> getProductResponse();
}
