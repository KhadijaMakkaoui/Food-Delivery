import 'food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);
  static Restaurant generateRestaurant(){
    return Restaurant('You Resto', '20-30 min', '2.4 km', 'Restaurant', 'assets/images/res_logo.png', 'Orange sandwich is delicious', 4.7,
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles':[],
        'Pizza': []
      }
    );
  }
}

