class BannerItem {
  String? id;
  String? imgUrl;
  BannerItem({required this.id, required this.imgUrl});

  factory BannerItem.fromJson(Map<String, dynamic> json) {
    return BannerItem(id: json['id'] ?? '', imgUrl: json['imgUrl'] ?? '');
  }
}

// 分类数据模型
class CategoryItem {
  String? id;
  String? name;
  String? picture;
  List<CategoryItem>? children;
  dynamic goods;

  CategoryItem({
    this.id,
    this.name,
    this.picture,
    this.children,
    this.goods,
  });

  // 工厂函数：将JSON转换为CategoryItem对象
  factory CategoryItem.fromJson(Map<String, dynamic> json) {
    return CategoryItem(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      picture: json['picture'] ?? '',
      // 递归转换children数组
      children: json['children'] != null
          ? (json['children'] as List)
              .map((child) => CategoryItem.fromJson(child))
              .toList()
          : null,
      goods: json['goods'],
    );
  }
}
