// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    String name;
    String description;
    String category;
    String thumbnail;
    int productViews;
    DateTime launchAt;
    bool isFeatured;
    int stock;
    String size;
    String brand;
    int price;
    int? userId;

    ProductEntry({
        required this.id,
        required this.name,
        required this.description,
        required this.category,
        required this.thumbnail,
        required this.productViews,
        required this.launchAt,
        required this.isFeatured,
        required this.stock,
        required this.size,
        required this.brand,
        required this.price,
        required this.userId,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        thumbnail: json["thumbnail"] ?? "",
        productViews: json["product_views"],
        launchAt: DateTime.parse(json["launch_at"]),
        isFeatured: json["is_featured"],
        stock: json["stock"],
        size: json["size"],
        brand: json["brand"],
        price: json["price"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "category": category,
        "thumbnail": thumbnail,
        "product_views": productViews,
        "launch_at": launchAt.toIso8601String(),
        "is_featured": isFeatured,
        "stock": stock,
        "size": size,
        "brand": brand,
        "price": price,
        "user_id": userId,
    };
}
