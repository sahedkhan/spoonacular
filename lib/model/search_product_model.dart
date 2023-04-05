class SearchProductModel {
  SearchProductModel({
      this.results, 
      this.offset, 
      this.number, 
      this.totalResults,});

  SearchProductModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    offset = json['offset'];
    number = json['number'];
    totalResults = json['totalResults'];
  }
  List<Results>? results;
  num? offset;
  num? number;
  num? totalResults;
SearchProductModel copyWith({  List<Results>? results,
  num? offset,
  num? number,
  num? totalResults,
}) => SearchProductModel(  results: results ?? this.results,
  offset: offset ?? this.offset,
  number: number ?? this.number,
  totalResults: totalResults ?? this.totalResults,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['offset'] = offset;
    map['number'] = number;
    map['totalResults'] = totalResults;
    return map;
  }

}

class Results {
  Results({
      this.id, 
      this.title, 
      this.image, 
      this.imageType,});

  Results.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imageType = json['imageType'];
  }
  num? id;
  String? title;
  String? image;
  String? imageType;
Results copyWith({  num? id,
  String? title,
  String? image,
  String? imageType,
}) => Results(  id: id ?? this.id,
  title: title ?? this.title,
  image: image ?? this.image,
  imageType: imageType ?? this.imageType,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['image'] = image;
    map['imageType'] = imageType;
    return map;
  }

}