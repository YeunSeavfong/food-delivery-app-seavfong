class Food{
  final String name;
  final String imgPath;
  final String restoName;
  final double price;

  Food({required this.price,required this.name, required this.imgPath, required this.restoName});

  static List<Food> foodMenu(){
    return[
      Food(name: 'Fresh Salad', imgPath: 'assets/image/food_image/food_1.png', 
            restoName: 'Lovy Food',price:10),
      Food(name: 'Original Salad', imgPath: 'assets/image/food_image/food_2.png', 
            restoName: 'Cloudy Resto',price:10),
      Food(name: 'Mixed Salad', imgPath: 'assets/image/food_image/food_3.png', 
            restoName: 'Circlo Resto',price:10),
      Food(name: 'Sweet Salad', imgPath: 'assets/image/food_image/food_4.png', 
            restoName: 'Hybrid Food',price:10),
      Food(name: 'Green Salad', imgPath: 'assets/image/food_image/food_2.png', 
            restoName: 'Delic Food',price:10),
      Food(name: 'Red Salad', imgPath: 'assets/image/food_image/food_1.png', 
            restoName: 'Healthy Resto',price:10),
      Food(name: 'Fresh Salad', imgPath: 'assets/image/food_image/food_1.png', 
            restoName: 'Lovy Food',price:10),
      Food(name: 'Original Salad', imgPath: 'assets/image/food_image/food_2.png', 
            restoName: 'Cloudy Resto',price:10),
      Food(name: 'Mixed Salad', imgPath: 'assets/image/food_image/food_3.png', 
            restoName: 'Circlo Resto',price:10),
    ];
  }
}