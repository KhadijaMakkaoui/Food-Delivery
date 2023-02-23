class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  String score;
  num price;
  num quantity;
  Map<String,String> ingredients;
  String about;
  bool highLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.price,
      this.quantity, this.ingredients, this.about,
      {this.highLight = false});
}