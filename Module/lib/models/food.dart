class Food {
  String name;
  String image;
  String category;
  double cal;
  double time;
  double rate;
  int reviews;
  bool isLiked;

  Food({
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.isLiked,
    required this.category,
  });
}

final List<Food> foods = [
  Food(
      name: "Vanilla",
      image:
      "https://static01.nyt.com/images/2024/02/08/multimedia/ya-vanilla-cupcakes-hbgp/ya-vanilla-cupcakes-hbgp-superJumbo.jpg",
      cal: 120,
      time: 15,
      rate: 4.4,
      reviews: 23,
      isLiked: false,
      category: 'Cupcake'),
  Food(
      name: "Chocolate",
      image:
      "https://iscreamforbuttercream.com/wp-content/uploads/2022/08/mini-chocolate-cupcakes-wide-with-wm-3-of-19.jpg",
      cal: 120,
      time: 20,
      rate: 4.4,
      reviews: 23,
      isLiked: false,
      category: 'Cupcake'),
  Food(
      name: "Red Velvet",
      image:
      "https://assets.elgourmet.com/wp-content/uploads/2016/07/shutterstock_1579137904.jpg",
      cal: 150,
      time: 15,
      rate: 4.4,
      reviews: 23,
      isLiked: false,
      category: 'Cupcake'),
  Food(
      name: "Salted Caramel",
      image:
      "https://recipes.net/wp-content/uploads/2021/02/salted-caramel-cupcakes-recipe.jpg",
      cal: 220,
      time: 10,
      rate: 4.4,
      reviews: 23,
      isLiked: false,
      category: 'Cupcake'),
  Food(
      name: "Coffee",
      image:
      "https://food-images.files.bbci.co.uk/food/recipes/coffee_cupcakes_39730_16x9.jpg",
      cal: 100,
      time: 25,
      rate: 4.4,
      reviews: 23,
      isLiked: false,
      category: 'Cupcake'),
];
