class RocketsListModel {
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  int? stages;
  int? boosters;
  int? costPerLaunch;
  int? successRatePct;
  String? firstFlight;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? id;


  RocketsListModel(
      {this.flickrImages,
      this.name,
      this.type,
      this.active,
      this.stages,
      this.boosters,
      this.costPerLaunch,
      this.successRatePct,
      this.firstFlight,
      this.country,
      this.company,
      this.wikipedia,
      this.description,
      this.id});

  RocketsListModel.fromJson(Map<String, dynamic> json) {
    flickrImages = json['flickr_images'].cast<String>();
    name = json['name'];
    type = json['type'];
    active = json['active'];
    stages = json['stages'];
    boosters = json['boosters'];
    costPerLaunch = json['cost_per_launch'];
    successRatePct = json['success_rate_pct'];
    firstFlight = json['first_flight'];
    country = json['country'];
    company = json['company'];
    wikipedia = json['wikipedia'];
    description = json['description'];
    id = json['id'];
  }
}
//
// class Height {
//   double? meters;
//   int? feet;
//
//   Height({this.meters, this.feet});
//
//   Height.fromJson(Map<String, dynamic> json) {
//     meters = json['meters'];
//     feet = json['feet'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['meters'] = this.meters;
//     data['feet'] = this.feet;
//     return data;
//   }
// }
//
// class Diameter {
//   double? meters;
//   double? feet;
//
//   Diameter({this.meters, this.feet});
//
//   Diameter.fromJson(Map<String, dynamic> json) {
//     meters = json['meters'];
//     feet = json['feet'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['meters'] = this.meters;
//     data['feet'] = this.feet;
//     return data;
//   }
// }
//
// class Mass {
//   int? kg;
//   int? lb;
//
//   Mass({this.kg, this.lb});
//
//   Mass.fromJson(Map<String, dynamic> json) {
//     kg = json['kg'];
//     lb = json['lb'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['kg'] = this.kg;
//     data['lb'] = this.lb;
//     return data;
//   }
// }
//
// class FirstStage {
//   ThrustSeaLevel? thrustSeaLevel;
//   ThrustSeaLevel? thrustVacuum;
//   bool? reusable;
//   int? engines;
//   double? fuelAmountTons;
//   int? burnTimeSec;
//
//   FirstStage(
//       {this.thrustSeaLevel,
//         this.thrustVacuum,
//         this.reusable,
//         this.engines,
//         this.fuelAmountTons,
//         this.burnTimeSec});
//
//   FirstStage.fromJson(Map<String, dynamic> json) {
//     thrustSeaLevel = json['thrust_sea_level'] != null
//         ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
//         : null;
//     thrustVacuum = json['thrust_vacuum'] != null
//         ? ThrustSeaLevel.fromJson(json['thrust_vacuum'])
//         : null;
//     reusable = json['reusable'];
//     engines = json['engines'];
//     fuelAmountTons = json['fuel_amount_tons'];
//     burnTimeSec = json['burn_time_sec'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (this.thrustSeaLevel != null) {
//       data['thrust_sea_level'] = this.thrustSeaLevel!.toJson();
//     }
//     if (this.thrustVacuum != null) {
//       data['thrust_vacuum'] = this.thrustVacuum!.toJson();
//     }
//     data['reusable'] = this.reusable;
//     data['engines'] = this.engines;
//     data['fuel_amount_tons'] = this.fuelAmountTons;
//     data['burn_time_sec'] = this.burnTimeSec;
//     return data;
//   }
// }
//
// class ThrustSeaLevel {
//   int? kN;
//   int? lbf;
//
//   ThrustSeaLevel({this.kN, this.lbf});
//
//   ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
//     kN = json['kN'];
//     lbf = json['lbf'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['kN'] = this.kN;
//     data['lbf'] = this.lbf;
//     return data;
//   }
// }
//
// class SecondStage {
//   ThrustSeaLevel? thrust;
//   Payloads? payloads;
//   bool? reusable;
//   int? engines;
//   double? fuelAmountTons;
//   int? burnTimeSec;
//
//   SecondStage(
//       {this.thrust,
//         this.payloads,
//         this.reusable,
//         this.engines,
//         this.fuelAmountTons,
//         this.burnTimeSec});
//
//   SecondStage.fromJson(Map<String, dynamic> json) {
//     thrust = json['thrust'] != null
//         ? ThrustSeaLevel.fromJson(json['thrust'])
//         : null;
//     payloads = json['payloads'] != null
//         ? Payloads.fromJson(json['payloads'])
//         : null;
//     reusable = json['reusable'];
//     engines = json['engines'];
//     fuelAmountTons = json['fuel_amount_tons'];
//     burnTimeSec = json['burn_time_sec'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (this.thrust != null) {
//       data['thrust'] = this.thrust!.toJson();
//     }
//     if (this.payloads != null) {
//       data['payloads'] = this.payloads!.toJson();
//     }
//     data['reusable'] = this.reusable;
//     data['engines'] = this.engines;
//     data['fuel_amount_tons'] = this.fuelAmountTons;
//     data['burn_time_sec'] = this.burnTimeSec;
//     return data;
//   }
// }
//
// class Payloads {
//   CompositeFairing? compositeFairing;
//   String? option1;
//
//   Payloads({this.compositeFairing, this.option1});
//
//   Payloads.fromJson(Map<String, dynamic> json) {
//     compositeFairing = json['composite_fairing'] != null
//         ? CompositeFairing.fromJson(json['composite_fairing'])
//         : null;
//     option1 = json['option_1'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (this.compositeFairing != null) {
//       data['composite_fairing'] = this.compositeFairing!.toJson();
//     }
//     data['option_1'] = this.option1;
//     return data;
//   }
// }
//
// class CompositeFairing {
//   Diameter? height;
//   Diameter? diameter;
//
//   CompositeFairing({this.height, this.diameter});
//
//   CompositeFairing.fromJson(Map<String, dynamic> json) {
//     height =
//     json['height'] != null ? Diameter.fromJson(json['height']) : null;
//     diameter = json['diameter'] != null
//         ? Diameter.fromJson(json['diameter'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (this.height != null) {
//       data['height'] = this.height!.toJson();
//     }
//     if (this.diameter != null) {
//       data['diameter'] = this.diameter!.toJson();
//     }
//     return data;
//   }
// }
//
// class Engines {
//   Isp? isp;
//   ThrustSeaLevel? thrustSeaLevel;
//   ThrustSeaLevel? thrustVacuum;
//   int? number;
//   String? type;
//   String? version;
//   String? layout;
//   int? engineLossMax;
//   String? propellant1;
//   String? propellant2;
//   int? thrustToWeight;
//
//   Engines(
//       {this.isp,
//         this.thrustSeaLevel,
//         this.thrustVacuum,
//         this.number,
//         this.type,
//         this.version,
//         this.layout,
//         this.engineLossMax,
//         this.propellant1,
//         this.propellant2,
//         this.thrustToWeight});
//
//   Engines.fromJson(Map<String, dynamic> json) {
//     isp = json['isp'] != null ? Isp.fromJson(json['isp']) : null;
//     thrustSeaLevel = json['thrust_sea_level'] != null
//         ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
//         : null;
//     thrustVacuum = json['thrust_vacuum'] != null
//         ? ThrustSeaLevel.fromJson(json['thrust_vacuum'])
//         : null;
//     number = json['number'];
//     type = json['type'];
//     version = json['version'];
//     layout = json['layout'];
//     engineLossMax = json['engine_loss_max'];
//     propellant1 = json['propellant_1'];
//     propellant2 = json['propellant_2'];
//     thrustToWeight = json['thrust_to_weight'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (this.isp != null) {
//       data['isp'] = this.isp!.toJson();
//     }
//     if (this.thrustSeaLevel != null) {
//       data['thrust_sea_level'] = this.thrustSeaLevel!.toJson();
//     }
//     if (this.thrustVacuum != null) {
//       data['thrust_vacuum'] = this.thrustVacuum!.toJson();
//     }
//     data['number'] = this.number;
//     data['type'] = this.type;
//     data['version'] = this.version;
//     data['layout'] = this.layout;
//     data['engine_loss_max'] = this.engineLossMax;
//     data['propellant_1'] = this.propellant1;
//     data['propellant_2'] = this.propellant2;
//     data['thrust_to_weight'] = this.thrustToWeight;
//     return data;
//   }
// }
//
// class Isp {
//   int? seaLevel;
//   int? vacuum;
//
//   Isp({this.seaLevel, this.vacuum});
//
//   Isp.fromJson(Map<String, dynamic> json) {
//     seaLevel = json['sea_level'];
//     vacuum = json['vacuum'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['sea_level'] = this.seaLevel;
//     data['vacuum'] = this.vacuum;
//     return data;
//   }
// }
//
// class LandingLegs {
//   int? number;
//   Null? material;
//
//   LandingLegs({this.number, this.material});
//
//   LandingLegs.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     material = json['material'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['number'] = this.number;
//     data['material'] = this.material;
//     return data;
//   }
// }
//
// class PayloadWeights {
//   String? id;
//   String? name;
//   int? kg;
//   int? lb;
//
//   PayloadWeights({this.id, this.name, this.kg, this.lb});
//
//   PayloadWeights.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     kg = json['kg'];
//     lb = json['lb'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['kg'] = this.kg;
//     data['lb'] = this.lb;
//     return data;
//   }
// }
