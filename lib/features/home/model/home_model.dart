class HomeModel {
  final String title;

  HomeModel({required this.title});

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      HomeModel(title: json['title']);
  Map<String, dynamic> toJson() => {'title': title};
}
