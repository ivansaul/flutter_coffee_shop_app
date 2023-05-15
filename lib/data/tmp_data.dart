import 'package:flutter_coffee_shop_app/entities/introduction.dart';

import '../entities/coffee.dart';

class DataTmp {
  static const chips = <String>[
    'Cappuchino',
    'Espresso',
    'Americano',
    'Macchiato',
    'Latte',
    'Frappé'
  ];

  // Introduction
  static final List<Introduction> introductionList = [
    Introduction(
      title: 'Rise and Savor the Coffee',
      subtitle: 'Experience the aroma and flavor like never before.',
      imageUrl: 'https://i.imgur.com/f1ZkmgC.jpg',
    ),
    Introduction(
      title: 'Savor the Moment with Our Coffee',
      subtitle: 'Indulge in our artisanal blends and taste the difference.',
      imageUrl: 'https://i.imgur.com/IjY028x.jpg',
    ),
    Introduction(
      title: 'Elevate Your Coffee Experience',
      subtitle:
          'Discover a world of rich, bold flavors with our premium roasts.',
      imageUrl: 'https://i.imgur.com/nnroE8z.jpg',
    ),
  ];
  
  // Coffee List Items
  static final List<Coffee> coffeeList = [
    Coffee(
      name: 'Americano',
      ingredients: 'With Cream',
      description:
          'An Americano is a coffee drink that is made with espresso and hot water. It is a popular alternative to drip coffee, and has a strong and bold flavor. The drink originated in Europe during World War II, when American soldiers would dilute their espresso with hot water to make it last longer.',
      imageUrl: 'https://i.imgur.com/y6Fj8tu.jpg',
      rating: 4.3,
      price: 3.8,
      reviews: '7.295',
    ),
    Coffee(
      name: 'Latte',
      ingredients: 'With Chocolate',
      description:
          'A latte is a coffee drink made with espresso and steamed milk. It is typically topped with a small amount of frothed milk. The drink originated in Italy and is now enjoyed around the world. It has a mild and creamy flavor, and is often sweetened with sugar or flavored syrups.',
      imageUrl: 'https://i.imgur.com/tEf7zGq.jpg',
      rating: 4.2,
      price: 3.5,
      reviews: '10.875',
    ),
    Coffee(
      name: 'Cappuccino',
      ingredients: 'With Oat Milk',
      description:
          'A cappuccino is a coffee beverage that is made with espresso and steamed milk, often topped with a layer of frothed milk. It is a type of espresso drink that originated in Italy and is now popular around the world. The drink is characterized by its strong and bold flavor, and is typically served in a small cup.',
      imageUrl: 'https://i.imgur.com/2aBjCR7.jpg',
      rating: 4.5,
      price: 4.2,
      reviews: '6.986',
    ),
    Coffee(
      name: 'Espresso',
      ingredients: 'With Sugar',
      description:
          'Espresso is a concentrated form of coffee that is made by forcing hot water through finely ground coffee beans. It originated in Italy and is now enjoyed around the world. Espresso has a strong and bold flavor, and is typically served in small shots.',
      imageUrl: 'https://i.imgur.com/HOU9gZO.jpg',
      rating: 4.7,
      price: 4.2,
      reviews: '3.584',
    ),
    Coffee(
      name: 'Mocha',
      ingredients: 'With Whipped Cream',
      description:
          'A mocha is a coffee drink that is made with espresso, chocolate, and steamed milk. It has a rich and indulgent flavor, and is often topped with whipped cream and chocolate shavings. The drink originated in Italy, and is now enjoyed around the world.',
      imageUrl: 'https://i.imgur.com/M73FiE2.jpg',
      rating: 4.2,
      price: 4.4,
      reviews: '6.752',
    ),
  ];
}
