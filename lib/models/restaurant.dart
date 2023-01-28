class Restaurant{
  final String imgPath;
  final String name;
  final String travelDuration;

  Restaurant({required this.imgPath, required this.name, required this.travelDuration});

  static List<Restaurant> restaurantList(){
    return[
      Restaurant(
        imgPath: 'assets/image/logo/logo_1.png', name: 'Lovy Food', travelDuration: '10mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_2.png', name: 'Cloudy Resto', travelDuration: '15mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_3.png', name: 'Circlo Resto', travelDuration: '20mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_4.png', name: 'Harty Food', travelDuration: '14mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_5.png', name: 'Hybrid Food', travelDuration: '30mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_6.png', name: 'Lovy Resto', travelDuration: '25mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_1.png', name: 'Delic Food', travelDuration: '19mins'),
      Restaurant(
        imgPath: 'assets/image/logo/logo_3.png', name: 'Healthy Resto', travelDuration: '27mins'),
    ];
  }
}