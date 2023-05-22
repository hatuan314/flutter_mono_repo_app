import 'package:countries_module/domain/entities/rest_country_entity.dart';

class RestCountryModel extends RestCountryEntity {
  RestCountryModel({
    NameModel? name,
    List<String>? tld,
    String? cca2,
    String? ccn3,
    String? cca3,
    String? cioc,
    bool? independent,
    String? status,
    bool? unMember,
    Map<String, dynamic>? currencies,
    IddModel? idd,
    List<String>? capital,
    List<String>? altSpellings,
    String? region,
    String? subregion,
    LanguagesModel? languages,
    Map<String, dynamic>? translations,
    List<double>? latlng,
    bool? landlocked,
    List<String>? borders,
    int? area,
    String? flag,
    MapsModel? maps,
    int? population,
    String? fifa,
    CarModel? car,
    List<String>? timezones,
    List<String>? continents,
    FlagsModel? flags,
    CoatOfArmsModel? coatOfArms,
    String? startOfWeek,
    CapitalInfoModel? capitalInfo,
    PostalCodeModel? postalCode,
  }) : super(
            name: name,
            tld: tld,
            cca2: cca2,
            ccn3: ccn3,
            cca3: cca3,
            cioc: cioc,
            independent: independent,
            status: status,
            unMember: unMember,
            currencies: currencies,
            idd: idd,
            capital: capital,
            altSpellings: altSpellings,
            region: region,
            subregion: subregion,
            languages: languages,
            translations: translations,
            latlng: latlng,
            landlocked: landlocked,
            borders: borders,
            area: area,
            flag: flag,
            maps: maps,
            population: population,
            fifa: fifa,
            car: car,
            timezones: timezones,
            continents: continents,
            flags: flags,
            coatOfArms: coatOfArms,
            startOfWeek: startOfWeek,
            capitalInfo: capitalInfo,
            postalCode: postalCode);

  RestCountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    tld = json['tld'].cast<String>();
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'];
    idd = json['idd'] != null ? IddModel.fromJson(json['idd']) : null;
    capital = json['capital'].cast<String>();
    altSpellings = json['altSpellings'].cast<String>();
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? LanguagesModel.fromJson(json['languages'])
        : null;
    translations = json['translations'];
    latlng = json['latlng'].cast<double>();
    landlocked = json['landlocked'];
    borders = json['borders'].cast<String>();
    area = json['area'];
    flag = json['flag'];
    maps = json['maps'] != null ? MapsModel.fromJson(json['maps']) : null;
    population = json['population'];
    fifa = json['fifa'];
    car = json['car'] != null ? CarModel.fromJson(json['car']) : null;
    timezones = json['timezones'].cast<String>();
    continents = json['continents'].cast<String>();
    flags = json['flags'] != null ? FlagsModel.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? CoatOfArmsModel.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? CapitalInfoModel.fromJson(json['capitalInfo'])
        : null;
    postalCode = json['postalCode'] != null
        ? PostalCodeModel.fromJson(json['postalCode'])
        : null;
  }
}

class NameModel extends NameEntity {
  NameModel({
    String? common,
    String? official,
    NativeNameModel? nativeName,
  }) : super(common: common, official: official, nativeName: nativeName);

  NameModel.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? NativeNameModel.fromJson(json['nativeName'])
        : null;
  }
}

class NativeNameModel extends NativeNameEntity {
  NativeNameModel({OfficialModel? official}) : super(official: official);

  NativeNameModel.fromJson(Map<String, dynamic> json) {
    official = json['vie'] != null ? OfficialModel.fromJson(json['vie']) : null;
  }
}

class OfficialModel extends OfficialEntity {
  OfficialModel({
    String? official,
    String? common,
  }) : super(official: official, common: common);

  OfficialModel.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }
}

class CurrencyModel extends CurrencyEntity {
  CurrencyModel({
    String? name,
    String? symbol,
  }) : super(name: name, symbol: symbol);

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }
}

class IddModel extends IddEntity {
  IddModel({String? root, List<String>? suffixes})
      : super(root: root, suffixes: suffixes);

  IddModel.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'].cast<String>();
  }
}

class LanguagesModel extends LanguagesEntity {
  LanguagesModel({String? lang}) : super(lang: lang);

  LanguagesModel.fromJson(Map<String, dynamic> json) {
    lang = json['vie'];
  }
}

class MapsModel extends MapsEntity {
  MapsModel({String? googleMaps, String? openStreetMaps})
      : super(googleMaps: googleMaps, openStreetMaps: openStreetMaps);

  MapsModel.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }
}

class CarModel extends CarEntity{

  CarModel({List<String>? signs, String? side}) : super(side: side, signs: signs);

  CarModel.fromJson(Map<String, dynamic> json) {
    signs = json['signs'].cast<String>();
    side = json['side'];
  }
}

class FlagsModel extends FlagsEntity{

  FlagsModel({String? png,
  String? svg,
  String? alt,}) : super(png: png, svg: svg, alt: alt);

  FlagsModel.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }
}

class CoatOfArmsModel extends CoatOfArmsEntity{

  CoatOfArmsModel({String? png, String? svg}): super(png: png, svg: svg);

  CoatOfArmsModel.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }
}

class CapitalInfoModel extends CapitalInfoEntity{

  CapitalInfoModel({List<double>? latlng}) : super(latlng: latlng);

  CapitalInfoModel.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng'].cast<double>();
  }
}

class PostalCodeModel extends PostalCodeEntity {

  PostalCodeModel({String? format, String? regex}) : super(format: format, regex: regex);

  PostalCodeModel.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }
}
