import 'package:flutter_shop/constants/index.dart';
import 'package:flutter_shop/utils/request.dart';
import 'package:flutter_shop/viewModels/index.dart';
// 轮播图数据模型
Future<List<BannerItem>> getBannerListApi() async {
  final res = await dioRuest.get(HttpConstants.BANNER_LIST);
  return (res as List).map((e) => BannerItem.fromJson(e)).toList();
}

// 分类数据模型
Future<List<CategoryItem>> getCategoryListApi() async {
  final res = await dioRuest.get(HttpConstants.CATEGORY_LIST);
  return (res as List).map((e) => CategoryItem.fromJson(e)).toList();
}
