class CategoryModel {
  String title;
  String image;

  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> categories = [
  CategoryModel(title: "Quantom Computing", image: "assets/images/frame1.png"),
  CategoryModel(title: "Networking", image: "assets/images/frame2.png"),
  CategoryModel(
      title: "Theory of Computation", image: "assets/images/frame3.png"),
  CategoryModel(
      title: "Compiler Construction", image: "assets/images/frame4.png"),
  CategoryModel(
      title: "Human Computer Interaction", image: "assets/images/frame1.png"),
  CategoryModel(title: "Software Design", image: "assets/images/frame2.png"),
];
