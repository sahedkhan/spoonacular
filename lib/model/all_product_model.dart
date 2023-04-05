class AllProductModel {
  AllProductModel({
    this.recipes,
  });

  AllProductModel.fromJson(dynamic json) {
    if (json['recipes'] != null) {
      recipes = [];
      json['recipes'].forEach((v) {
        recipes?.add(Recipes.fromJson(v));
      });
    }
  }
  List<Recipes>? recipes;
  AllProductModel copyWith({
    List<Recipes>? recipes,
  }) =>
      AllProductModel(
        recipes: recipes ?? this.recipes,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (recipes != null) {
      map['recipes'] = recipes?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Recipes {
  Recipes({
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.veryHealthy,
    this.cheap,
    this.veryPopular,
    this.sustainable,
    this.lowFodmap,
    this.weightWatcherSmartPoints,
    this.gaps,
    this.preparationMinutes,
    this.cookingMinutes,
    this.aggregateLikes,
    this.healthScore,
    this.creditsText,
    this.license,
    this.sourceName,
    this.pricePerServing,
    this.extendedIngredients,
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
    this.image,
    this.imageType,
    this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
    this.occasions,
    this.instructions,
    this.analyzedInstructions,
    this.originalId,
    this.spoonacularSourceUrl,
  });

  Recipes.fromJson(dynamic json) {
    vegetarian = json['vegetarian'];
    vegan = json['vegan'];
    glutenFree = json['glutenFree'];
    dairyFree = json['dairyFree'];
    veryHealthy = json['veryHealthy'];
    cheap = json['cheap'];
    veryPopular = json['veryPopular'];
    sustainable = json['sustainable'];
    lowFodmap = json['lowFodmap'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    gaps = json['gaps'];
    preparationMinutes = json['preparationMinutes'];
    cookingMinutes = json['cookingMinutes'];
    aggregateLikes = json['aggregateLikes'];
    healthScore = json['healthScore'];
    creditsText = json['creditsText'];
    license = json['license'];
    sourceName = json['sourceName'];
    pricePerServing = json['pricePerServing'];
    if (json['extendedIngredients'] != null) {
      extendedIngredients = [];
      json['extendedIngredients'].forEach((v) {
        extendedIngredients?.add(ExtendedIngredients.fromJson(v));
      });
    }
    id = json['id'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
    image = json['image'];
    imageType = json['imageType'];
    summary = json['summary'];
    if (json['cuisines'] != null) {
      cuisines = List<dynamic>.from(json["cuisines"].map((x) => x));
    }
    dishTypes =
        json['dishTypes'] != null ? json['dishTypes'].cast<String>() : [];
    diets = json['diets'] != null ? json['diets'].cast<String>() : [];
    if (json['occasions'] != null) {
      occasions = List<dynamic>.from(json["occasions"].map((x) => x));
    }
    instructions = json['instructions'];
    if (json['analyzedInstructions'] != null) {
      analyzedInstructions = [];
      json['analyzedInstructions'].forEach((v) {
        analyzedInstructions?.add(AnalyzedInstructions.fromJson(v));
      });
    }
    originalId = json['originalId'];
    spoonacularSourceUrl = json['spoonacularSourceUrl'];
  }
  bool? vegetarian;
  bool? vegan;
  bool? glutenFree;
  bool? dairyFree;
  bool? veryHealthy;
  bool? cheap;
  bool? veryPopular;
  bool? sustainable;
  bool? lowFodmap;
  num? weightWatcherSmartPoints;
  String? gaps;
  num? preparationMinutes;
  num? cookingMinutes;
  num? aggregateLikes;
  num? healthScore;
  String? creditsText;
  String? license;
  String? sourceName;
  num? pricePerServing;
  List<ExtendedIngredients>? extendedIngredients;
  num? id;
  String? title;
  num? readyInMinutes;
  num? servings;
  String? sourceUrl;
  String? image;
  String? imageType;
  String? summary;
  List<dynamic>? cuisines;
  List<String>? dishTypes;
  List<String>? diets;
  List<dynamic>? occasions;
  String? instructions;
  List<AnalyzedInstructions>? analyzedInstructions;
  dynamic originalId;
  String? spoonacularSourceUrl;
  Recipes copyWith({
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    bool? cheap,
    bool? veryPopular,
    bool? sustainable,
    bool? lowFodmap,
    num? weightWatcherSmartPoints,
    String? gaps,
    num? preparationMinutes,
    num? cookingMinutes,
    num? aggregateLikes,
    num? healthScore,
    String? creditsText,
    String? license,
    String? sourceName,
    num? pricePerServing,
    List<ExtendedIngredients>? extendedIngredients,
    num? id,
    String? title,
    num? readyInMinutes,
    num? servings,
    String? sourceUrl,
    String? image,
    String? imageType,
    String? summary,
    List<dynamic>? cuisines,
    List<String>? dishTypes,
    List<String>? diets,
    List<dynamic>? occasions,
    String? instructions,
    List<AnalyzedInstructions>? analyzedInstructions,
    dynamic originalId,
    String? spoonacularSourceUrl,
  }) =>
      Recipes(
        vegetarian: vegetarian ?? this.vegetarian,
        vegan: vegan ?? this.vegan,
        glutenFree: glutenFree ?? this.glutenFree,
        dairyFree: dairyFree ?? this.dairyFree,
        veryHealthy: veryHealthy ?? this.veryHealthy,
        cheap: cheap ?? this.cheap,
        veryPopular: veryPopular ?? this.veryPopular,
        sustainable: sustainable ?? this.sustainable,
        lowFodmap: lowFodmap ?? this.lowFodmap,
        weightWatcherSmartPoints:
            weightWatcherSmartPoints ?? this.weightWatcherSmartPoints,
        gaps: gaps ?? this.gaps,
        preparationMinutes: preparationMinutes ?? this.preparationMinutes,
        cookingMinutes: cookingMinutes ?? this.cookingMinutes,
        aggregateLikes: aggregateLikes ?? this.aggregateLikes,
        healthScore: healthScore ?? this.healthScore,
        creditsText: creditsText ?? this.creditsText,
        license: license ?? this.license,
        sourceName: sourceName ?? this.sourceName,
        pricePerServing: pricePerServing ?? this.pricePerServing,
        extendedIngredients: extendedIngredients ?? this.extendedIngredients,
        id: id ?? this.id,
        title: title ?? this.title,
        readyInMinutes: readyInMinutes ?? this.readyInMinutes,
        servings: servings ?? this.servings,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        image: image ?? this.image,
        imageType: imageType ?? this.imageType,
        summary: summary ?? this.summary,
        cuisines: cuisines ?? this.cuisines,
        dishTypes: dishTypes ?? this.dishTypes,
        diets: diets ?? this.diets,
        occasions: occasions ?? this.occasions,
        instructions: instructions ?? this.instructions,
        analyzedInstructions: analyzedInstructions ?? this.analyzedInstructions,
        originalId: originalId ?? this.originalId,
        spoonacularSourceUrl: spoonacularSourceUrl ?? this.spoonacularSourceUrl,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vegetarian'] = vegetarian;
    map['vegan'] = vegan;
    map['glutenFree'] = glutenFree;
    map['dairyFree'] = dairyFree;
    map['veryHealthy'] = veryHealthy;
    map['cheap'] = cheap;
    map['veryPopular'] = veryPopular;
    map['sustainable'] = sustainable;
    map['lowFodmap'] = lowFodmap;
    map['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    map['gaps'] = gaps;
    map['preparationMinutes'] = preparationMinutes;
    map['cookingMinutes'] = cookingMinutes;
    map['aggregateLikes'] = aggregateLikes;
    map['healthScore'] = healthScore;
    map['creditsText'] = creditsText;
    map['license'] = license;
    map['sourceName'] = sourceName;
    map['pricePerServing'] = pricePerServing;
    if (extendedIngredients != null) {
      map['extendedIngredients'] =
          extendedIngredients?.map((v) => v.toJson()).toList();
    }
    map['id'] = id;
    map['title'] = title;
    map['readyInMinutes'] = readyInMinutes;
    map['servings'] = servings;
    map['sourceUrl'] = sourceUrl;
    map['image'] = image;
    map['imageType'] = imageType;
    map['summary'] = summary;
    if (cuisines != null) {
      map['cuisines'] = cuisines?.map((v) => v.toJson()).toList();
    }
    map['dishTypes'] = dishTypes;
    map['diets'] = diets;
    if (occasions != null) {
      map['occasions'] = occasions?.map((v) => v.toJson()).toList();
    }
    map['instructions'] = instructions;
    if (analyzedInstructions != null) {
      map['analyzedInstructions'] =
          analyzedInstructions?.map((v) => v.toJson()).toList();
    }
    map['originalId'] = originalId;
    map['spoonacularSourceUrl'] = spoonacularSourceUrl;
    return map;
  }
}

class AnalyzedInstructions {
  AnalyzedInstructions({
    this.name,
    this.steps,
  });

  AnalyzedInstructions.fromJson(dynamic json) {
    name = json['name'];
    if (json['steps'] != null) {
      steps = [];
      json['steps'].forEach((v) {
        steps?.add(Steps.fromJson(v));
      });
    }
  }
  String? name;
  List<Steps>? steps;
  AnalyzedInstructions copyWith({
    String? name,
    List<Steps>? steps,
  }) =>
      AnalyzedInstructions(
        name: name ?? this.name,
        steps: steps ?? this.steps,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    if (steps != null) {
      map['steps'] = steps?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Steps {
  Steps({
    this.number,
    this.step,
    this.ingredients,
    this.equipment,
  });

  Steps.fromJson(dynamic json) {
    number = json['number'];
    step = json['step'];
    if (json['ingredients'] != null) {
      ingredients = [];
      json['ingredients'].forEach((v) {
        ingredients?.add(Ingredients.fromJson(v));
      });
    }
    if (json['equipment'] != null) {
      equipment = [];
      json['equipment'].forEach((v) {
        equipment?.add(Equipment.fromJson(v));
      });
    }
  }
  num? number;
  String? step;
  List<Ingredients>? ingredients;
  List<Equipment>? equipment;
  Steps copyWith({
    num? number,
    String? step,
    List<Ingredients>? ingredients,
    List<Equipment>? equipment,
  }) =>
      Steps(
        number: number ?? this.number,
        step: step ?? this.step,
        ingredients: ingredients ?? this.ingredients,
        equipment: equipment ?? this.equipment,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['step'] = step;
    if (ingredients != null) {
      map['ingredients'] = ingredients?.map((v) => v.toJson()).toList();
    }
    if (equipment != null) {
      map['equipment'] = equipment?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Equipment {
  Equipment({
    this.id,
    this.name,
    this.localizedName,
    this.image,
  });

  Equipment.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    localizedName = json['localizedName'];
    image = json['image'];
  }
  num? id;
  String? name;
  String? localizedName;
  String? image;
  Equipment copyWith({
    num? id,
    String? name,
    String? localizedName,
    String? image,
  }) =>
      Equipment(
        id: id ?? this.id,
        name: name ?? this.name,
        localizedName: localizedName ?? this.localizedName,
        image: image ?? this.image,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['localizedName'] = localizedName;
    map['image'] = image;
    return map;
  }
}

class Ingredients {
  Ingredients({
    this.id,
    this.name,
    this.localizedName,
    this.image,
  });

  Ingredients.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    localizedName = json['localizedName'];
    image = json['image'];
  }
  num? id;
  String? name;
  String? localizedName;
  String? image;
  Ingredients copyWith({
    num? id,
    String? name,
    String? localizedName,
    String? image,
  }) =>
      Ingredients(
        id: id ?? this.id,
        name: name ?? this.name,
        localizedName: localizedName ?? this.localizedName,
        image: image ?? this.image,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['localizedName'] = localizedName;
    map['image'] = image;
    return map;
  }
}

class ExtendedIngredients {
  ExtendedIngredients({
    this.id,
    this.aisle,
    this.image,
    this.consistency,
    this.name,
    this.nameClean,
    this.original,
    this.originalName,
    this.amount,
    this.unit,
    this.meta,
    this.measures,
  });

  ExtendedIngredients.fromJson(dynamic json) {
    id = json['id'];
    aisle = json['aisle'];
    image = json['image'];
    consistency = json['consistency'];
    name = json['name'];
    nameClean = json['nameClean'];
    original = json['original'];
    originalName = json['originalName'];
    amount = json['amount'];
    unit = json['unit'];
    if (json['meta'] != null) {
      meta = List<dynamic>.from(json["meta"].map((x) => x));
    }
    measures =
        json['measures'] != null ? Measures.fromJson(json['measures']) : null;
  }
  num? id;
  String? aisle;
  String? image;
  String? consistency;
  String? name;
  String? nameClean;
  String? original;
  String? originalName;
  num? amount;
  String? unit;
  List<dynamic>? meta;
  Measures? measures;
  ExtendedIngredients copyWith({
    num? id,
    String? aisle,
    String? image,
    String? consistency,
    String? name,
    String? nameClean,
    String? original,
    String? originalName,
    num? amount,
    String? unit,
    List<dynamic>? meta,
    Measures? measures,
  }) =>
      ExtendedIngredients(
        id: id ?? this.id,
        aisle: aisle ?? this.aisle,
        image: image ?? this.image,
        consistency: consistency ?? this.consistency,
        name: name ?? this.name,
        nameClean: nameClean ?? this.nameClean,
        original: original ?? this.original,
        originalName: originalName ?? this.originalName,
        amount: amount ?? this.amount,
        unit: unit ?? this.unit,
        meta: meta ?? this.meta,
        measures: measures ?? this.measures,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['aisle'] = aisle;
    map['image'] = image;
    map['consistency'] = consistency;
    map['name'] = name;
    map['nameClean'] = nameClean;
    map['original'] = original;
    map['originalName'] = originalName;
    map['amount'] = amount;
    map['unit'] = unit;
    if (meta != null) {
      map['meta'] = meta?.map((v) => v.toJson()).toList();
    }
    if (measures != null) {
      map['measures'] = measures?.toJson();
    }
    return map;
  }
}

class Measures {
  Measures({
    this.us,
    this.metric,
  });

  Measures.fromJson(dynamic json) {
    us = json['us'] != null ? Us.fromJson(json['us']) : null;
    metric = json['metric'] != null ? Metric.fromJson(json['metric']) : null;
  }
  Us? us;
  Metric? metric;
  Measures copyWith({
    Us? us,
    Metric? metric,
  }) =>
      Measures(
        us: us ?? this.us,
        metric: metric ?? this.metric,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (us != null) {
      map['us'] = us?.toJson();
    }
    if (metric != null) {
      map['metric'] = metric?.toJson();
    }
    return map;
  }
}

class Metric {
  Metric({
    this.amount,
    this.unitShort,
    this.unitLong,
  });

  Metric.fromJson(dynamic json) {
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }
  num? amount;
  String? unitShort;
  String? unitLong;
  Metric copyWith({
    num? amount,
    String? unitShort,
    String? unitLong,
  }) =>
      Metric(
        amount: amount ?? this.amount,
        unitShort: unitShort ?? this.unitShort,
        unitLong: unitLong ?? this.unitLong,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['unitShort'] = unitShort;
    map['unitLong'] = unitLong;
    return map;
  }
}

class Us {
  Us({
    this.amount,
    this.unitShort,
    this.unitLong,
  });

  Us.fromJson(dynamic json) {
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }
  num? amount;
  String? unitShort;
  String? unitLong;
  Us copyWith({
    num? amount,
    String? unitShort,
    String? unitLong,
  }) =>
      Us(
        amount: amount ?? this.amount,
        unitShort: unitShort ?? this.unitShort,
        unitLong: unitLong ?? this.unitLong,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['unitShort'] = unitShort;
    map['unitLong'] = unitLong;
    return map;
  }
}
