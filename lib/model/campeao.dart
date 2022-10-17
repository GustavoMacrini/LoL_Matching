class Campeao{
  String name;

  Campeao(
    this.name,
  );

  factory Campeao.fromJson(Map<String, dynamic> json){
    return Campeao(
      json['name'],
    );
  }


}