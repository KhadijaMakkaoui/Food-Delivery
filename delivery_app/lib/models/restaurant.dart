import 'food.dart';

class Restaurant{
  String label;
  String name;
  String waitTime;
  String distance;

  String logoUrl;
  String desc;
  String score;
  /*Map<String,List<Food>> menu;*/

  Restaurant(
      {required this.name,
        required this.waitTime,
        required this.distance,
        required this.label,
        required this.logoUrl,
        required this.desc,
        required this.score} /*, this.menu*/);
  static Restaurant fromJson(Map<String, dynamic> json){
   return Restaurant(
     name: json['name'] as String,
     waitTime: json['waitTime'] as String,
     distance: json['distance'] as String,
     label: json['label'] as String,
     logoUrl: json['logoUrl'] as String,
     desc: json['desc'] as String,
     score: json['score'] as String,
   );
  }
  Map<String, dynamic> toJson() => {
    'name': name,
    'waitTime': waitTime,
    'distance': distance,
    'label': label,
    'logoUrl': logoUrl,
    'desc': desc,
    'score': score,
  };
  static Restaurant generateRestaurant(){
      return Restaurant(
        name: 'Burger King',
        waitTime: '20-30 min',
        distance: '2.4 km',
        label: 'CCA23',
        logoUrl: 'assets/images/burgerking.png',
        desc: 'The best burger in town',
        score: '4.5',
        /*{
        'Recommended': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles':[],
        'Pizza': []
      }*/
    );
  }


}

