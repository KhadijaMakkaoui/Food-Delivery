class Food {
  String imgUrl;
  String desc;
  String name;
  num price;
  String restoRef;

  Food(this.imgUrl, this.desc, this.name, this.price, this.restoRef);

  Food.fromJson(Map<String, dynamic> json)
      : imgUrl = json['imgUrl'],
        desc = json['desc'],
        name = json['name'],
        price = json['price'],
        restoRef = json['restoRef'];

  /*  String waitTime;
  num score;
  String energy;
   List<Map<String,String>>ingredients;
  String about;
  bool highLight;*/

/*  static List<Food> generateRecommendFoods(){
    return[
      Food(
        'assets/images/dish3.png',
        'Highly Recommended',
        'Veggies Noodles',
        '20 min',
        4.5,
        '600 kcal',
        17,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          }
        ]  ,
        'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
,          highLight: true
      ),
      Food(
        'assets/images/dish2.png',
        'Highly Recommended',
        'Meat Burger',
        '20 min',
        4.5,
        '600 kcal',
        17,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },

        {
        'egg': 'assets/images/ingre3.png',
        },
        {
        'green': 'assets/images/ingre4.png',
        }
        ],
        'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
      ),
      Food(
        'assets/images/dish1.png',
        'Highly Recommended',
        'Chicken Burger',
        '20 min',
        4.5,
        '600 kcal',
        17,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          }
        ]  ,
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',

      ),
      Food(
        'assets/images/dish4.png',
        'Highly Recommended',
        'Pasta',
        '20 min',
        4.5,
        '600 kcal',
        17,
        0,
        [
        {
        'egg': 'assets/images/ingre3.png',
        },
        {
        'green': 'assets/images/ingre4.png',
        },
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          }
        ]  ,
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',

      ),
      // Add more Food objects as needed
    ];
  }
  static List<Food> generatePopularFoods(){
    return[
      Food(
        'assets/images/dish1.png',
        'Highly Recommended',
        'Noodles',
        '20 min',
        4.5,
        '600 kcal',
        17,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'egg': 'assets/images/ingre3.png',
          },
          {
            'green': 'assets/images/ingre4.png',
          }
        ]  ,
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',
          highLight: true
      ),
      Food(
        'assets/images/dish2.png',
        'Highly Recommended',
        'Chicken Breast',
        '20 min',
        4.5,
        '600 kcal',
        17,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'egg': 'assets/images/ingre3.png',
          },
          {
            'green': 'assets/images/ingre4.png',
          }
        ],
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',

      ),
      // Add more Food objects as needed
    ];
  }*/
}
