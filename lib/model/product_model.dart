class Product {
  final String name;
  final String image;
  final String quantity;
  final double price;

  Product(this.name, this.image, this.quantity, this.price);
}

const double price = 3.5;
const String quantity = '2pcs';

final List<Product> exclusiveProduct = [
  Product('Fresh Red Apple', 'assets/product/apple1.png', quantity, price),
  Product('Organic Banana', 'assets/product/banana1.png', quantity, price),
  Product('Fresh Beef', 'assets/product/beef1.png', quantity, price),
  Product('Winter Cabbage', 'assets/product/cabbage1.png', quantity, price),
  Product('Chicken Meat', 'assets/product/chicken1.png', quantity, price),
  Product('Seasonal Cauliflower', 'assets/product/couli-flower1.png', quantity,
      price),
  Product('Soft Drinks', 'assets/product/drinks1.png', quantity, price),
  Product('Chicken Egg', 'assets/product/egg1.png', quantity, price),
  Product('Solid Ginger', 'assets/product/ginger2.png', quantity, price),
  Product('Mutton Meat', 'assets/product/mutton3.png', quantity, price),
  Product('Green Cucumber', 'assets/product/qucomber2.png', quantity, price),
  Product('Spicy Onion', 'assets/product/onion4.png', quantity, price),
  Product('Pea Code', 'assets/product/peacode3.png', quantity, price),
  Product('Pine-Apple', 'assets/product/pine-apple5.png', quantity, price),
  Product('White Potato', 'assets/product/potato2.png', quantity, price),
  Product('Red Tomato', 'assets/product/tomato2.png', quantity, price),
];

final List<Product> bestSellerProduct = [
  Product('Cauliflower', 'assets/product/couli-flower4.png', quantity, price),
  Product('Pomegranate', 'assets/product/omegranate2.png', quantity, price),
  Product('Winter Cabbage', 'assets/product/cabbage4.png', quantity, price),
  Product('Strawberry', 'assets/product/strawbery2.png', quantity, price),
  Product('Chicken Meat', 'assets/product/chicken3.png', quantity, price),
  Product('Green Apple', 'assets/product/apple5.png', quantity, price),
  Product('Organic Banana', 'assets/product/banana3.png', quantity, price),
  Product('Fresh Beef', 'assets/product/beef2.png', quantity, price),
  Product('Chicken Egg', 'assets/product/egg2.png', quantity, price),
  Product('Soft Drinks', 'assets/product/drinks1.png', quantity, price),
  Product('Spicy Onion', 'assets/product/onion6.png', quantity, price),
  Product('Orange', 'assets/product/orange4.png', quantity, price),
  Product('White Potato', 'assets/product/potato3.png', quantity, price),
  Product('Red Tomato', 'assets/product/tomato1.png', quantity, price),
];

class CategoryItem {
  final String name;
  CategoryItem(this.name);
}

final List<CategoryItem> items = [
  CategoryItem('Fresh Foods & Vegetable'),
  CategoryItem('Cooking Oil & Ghee'),
  CategoryItem('Fish & Meat'),
  CategoryItem('Bakary & Cookies'),
  CategoryItem('Bakary & Cookies'),
  CategoryItem('Oil & Beverage'),
  CategoryItem('Drinks and Juice'),
  CategoryItem('Coffee'),
  CategoryItem('Rice'),
];
