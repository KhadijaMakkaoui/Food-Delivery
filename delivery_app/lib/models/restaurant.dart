import 'food.dart';

class Restaurant{
  String label;
  String name;
  String waitTime;
  String distance;

  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);
  static Restaurant generateRestaurant(){
    return Restaurant('Burger King', '20-30 min', '2.4 km', 'Restaurant', 'assets/images/res_logo.png', 'Orange sandwich is delicious', 4.7,
      {
        'Recommended': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles':[],
        'Pizza': []
      }
    );
  }
}

