class SourceModel {
  String id;
  String name;
  SourceModel({this.id, this.name});

  SourceModel.fromJson(dynamic json) {
    if (json.isNotEmpty) {
      id = json["id"];
      name = json["name"];
    }
  }
}
