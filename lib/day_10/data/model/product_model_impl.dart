import 'package:first_app/day_10/data/model/product_model.dart';
import 'package:first_app/day_10/data/vos/product_vo/product_vo.dart';
import 'package:first_app/day_10/network/data_agent/product_data_agent.dart';
import 'package:first_app/day_10/network/data_agent/product_data_agent_impl.dart';

class ProductModelImpl extends ProductModel {
  final ProductDataAgent _dataAgent = ProductDataAgentImpl();

  @override
  Future<List<ProductVo>?> getProduct() =>
      _dataAgent.getProduct().then((value) {
        var temp = value;
        temp = temp?.map((e) {
          e.description = "loamp";
          e.image = "http//:";
          return e;
        }).toList();
        return temp;
      });
}
