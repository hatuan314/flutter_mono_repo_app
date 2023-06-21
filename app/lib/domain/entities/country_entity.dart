import 'package:countries_module/countries_module.dart';
import 'package:utils_module/utils/app_utils.dart';

class CountryEntity {
  Name? name;
  String? region;
  String? subregion;
  Map<String, dynamic>? languages;
  CoatOfArms? coatOfArms;
  Flags? flags;
  String? capital;
  int? population;
  double? area;
  Map<String, dynamic>? currency;
  List<String>? timezones;

  CountryEntity(
      {this.name,
      this.region,
      this.subregion,
      this.languages,
      this.coatOfArms,
      this.flags,
      this.capital,
      this.population,
      this.area,
      this.currency,
      this.timezones});

  factory CountryEntity.fromRestCountryModel(RestCountryModel model) =>
      CountryEntity(
          name: model.name,
          region: model.region,
          subregion: model.subregion,
          languages: model.languages,
          coatOfArms: model.coatOfArms,
          flags: model.flags,
          capital: isNullEmptyList(model.capital) ? '' : model.capital!.first,
          population: model.population,
          area: model.area ?? 0,
          currency: model.currencies,
          timezones: model.timezones);
}
