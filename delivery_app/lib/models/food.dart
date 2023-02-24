class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String energy;
  num price;
  num quantity;
  List<Map<String,String>>ingredients;
  String about;
  bool highLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score,this.energy, this.price,
      this.quantity, this.ingredients, this.about,
      {this.highLight = false});

  static List<Food> generateRecommendFoods(){
    return[
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
          }
        ],
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',

      ),
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
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          }
        ]  ,
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',
        highLight: true
      ),
      // Add more Food objects as needed
    ];
  }
  static List<Food> generatePopularFoods(){
    return[
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
          }
        ],
        'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',

      ),
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
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            }
          ]  ,
          'Our classic burger with a juicy beef patty, fresh lettuce, tomato, and cheese',
          highLight: true
      ),
      // Add more Food objects as needed
    ];
  }
}