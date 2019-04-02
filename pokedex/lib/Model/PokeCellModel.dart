class PokeCellModel {
  String _image; //https://img.pokemondb.net/sprites/omega-ruby-alpha-sapphire/dex/normal/pikachu.png
  final String name;

  PokeCellModel({this.name});

  factory PokeCellModel.fromJson(Map<String, dynamic> json) {
    return PokeCellModel(
      name: json["results"][0]
    );
  }

  void setImage() {
    _image = "//https://img.pokemondb.net/sprites/omega-ruby-alpha-sapphire/dex/normal/${name}.png";
  }

  String getImage() {
    return _image;
  }
}