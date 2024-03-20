import 'package:flutter_ui_task_20_march/model/category_model.dart';
import 'package:flutter_ui_task_20_march/model/product_model.dart';

class HomeScreenController {
  static const List categoryList = [
    CategoryModel(
        label: 'Fruits',
        imageUrl:
            'https://www.clipartqueen.com/image-files/fruit-clipart-grapes-peach-orange.png'),
    CategoryModel(
        label: 'Veggies',
        imageUrl:
            'https://www.clipartqueen.com/image-files/different-kinds-of-vegetables.png'),
    CategoryModel(
        label: 'Dairy',
        imageUrl: 'https://cdn-icons-png.flaticon.com/512/6170/6170624.png'),
    CategoryModel(
        label: 'Essential', imageUrl: 'https://pngimg.com/d/egg_PNG40811.png'),
  ];
  static const List productList = [
    ProductModel(
      itemName: 'Red Label Tea',
      brandName: 'Red Label',
      type: 'Black Tea',
      quantity: '7 KG',
      shelfLife: '12 Months',
      organic: false,
      flavor: 'plain',
      rating: 3.6,
      ratingCount: 96,
      rate: 20,
      discount: 5,
      imageUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/12/UA/KK/ST/41831692/red-label-tea-500-gm.jpg',
    ),
    ProductModel(
      itemName: 'Red Label Tea',
      brandName: 'Red Label',
      type: 'Black Tea',
      quantity: '7 KG',
      shelfLife: '12 Months',
      organic: false,
      flavor: 'plain',
      rating: 4.2,
      ratingCount: 96,
      rate: 12,
      discount: 5,
      imageUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/12/UA/KK/ST/41831692/red-label-tea-500-gm.jpg',
    ),
    ProductModel(
      itemName: 'Red Label Tea',
      brandName: 'Red Label',
      type: 'Black Tea',
      quantity: '7 KG',
      shelfLife: '12 Months',
      organic: false,
      flavor: 'plain',
      rating: 4.2,
      ratingCount: 96,
      rate: 12,
      discount: 5,
      imageUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/12/UA/KK/ST/41831692/red-label-tea-500-gm.jpg',
    ),
    ProductModel(
      itemName: 'Red Label Tea',
      brandName: 'Red Label',
      type: 'Black Tea',
      quantity: '7 KG',
      shelfLife: '12 Months',
      organic: false,
      flavor: 'plain',
      rating: 4.2,
      ratingCount: 96,
      rate: 12,
      discount: 5,
      imageUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/12/UA/KK/ST/41831692/red-label-tea-500-gm.jpg',
    ),
  ];
}
