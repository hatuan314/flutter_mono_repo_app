import 'package:countries_module/countries_module.dart';

class CountryEntity {
  Name? name;
  String? region;
  String? subregion;
  Languages? languages;
  CoatOfArms? coatOfArms;
  Flags? flags;

  CountryEntity(
      {this.name,
      this.region,
      this.subregion,
      this.languages,
      this.coatOfArms,
      this.flags});

  factory CountryEntity.fromRestCountryModel(RestCountryModel model) =>
      CountryEntity(
          name: model.name,
          region: model.region,
          subregion: model.subregion,
          languages: model.languages,
          coatOfArms: model.coatOfArms,
          flags: model.flags);
}
