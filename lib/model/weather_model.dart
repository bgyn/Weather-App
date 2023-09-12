// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
    int? queryCost;
    double? latitude;
    double? longitude;
    String? resolvedAddress;
    String? address;
    String? timezone;
    double? tzoffset;
    String? description;
    List<CurrentConditions>? days;
    List<dynamic>? alerts;
    Stations? stations;
    CurrentConditions? currentConditions;

    WeatherModel({
        this.queryCost,
        this.latitude,
        this.longitude,
        this.resolvedAddress,
        this.address,
        this.timezone,
        this.tzoffset,
        this.description,
        this.days,
        this.alerts,
        this.stations,
        this.currentConditions,
    });

    factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        queryCost: json["queryCost"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        resolvedAddress: json["resolvedAddress"],
        address: json["address"],
        timezone: json["timezone"],
        tzoffset: json["tzoffset"]?.toDouble(),
        description: json["description"],
        days: json["days"] == null ? [] : List<CurrentConditions>.from(json["days"]!.map((x) => CurrentConditions.fromJson(x))),
        alerts: json["alerts"] == null ? [] : List<dynamic>.from(json["alerts"]!.map((x) => x)),
        stations: json["stations"] == null ? null : Stations.fromJson(json["stations"]),
        currentConditions: json["currentConditions"] == null ? null : CurrentConditions.fromJson(json["currentConditions"]),
    );

    Map<String, dynamic> toJson() => {
        "queryCost": queryCost,
        "latitude": latitude,
        "longitude": longitude,
        "resolvedAddress": resolvedAddress,
        "address": address,
        "timezone": timezone,
        "tzoffset": tzoffset,
        "description": description,
        "days": days == null ? [] : List<dynamic>.from(days!.map((x) => x.toJson())),
        "alerts": alerts == null ? [] : List<dynamic>.from(alerts!.map((x) => x)),
        "stations": stations?.toJson(),
        "currentConditions": currentConditions?.toJson(),
    };
}

class CurrentConditions {
    String? datetime;
    int? datetimeEpoch;
    double? temp;
    double? feelslike;
    double? humidity;
    double? dew;
    double? precip;
    double? precipprob;
    int? snow;
    int? snowdepth;
    List<Icon>? preciptype;
    double? windgust;
    double? windspeed;
    double? winddir;
    double? pressure;
    double? visibility;
    double? cloudcover;
    double? solarradiation;
    double? solarenergy;
    int? uvindex;
    Conditions? conditions;
    Icon? icon;
    List<Station>? stations;
    Source? source;
    String? sunrise;
    int? sunriseEpoch;
    String? sunset;
    int? sunsetEpoch;
    double? moonphase;
    double? tempmax;
    double? tempmin;
    double? feelslikemax;
    double? feelslikemin;
    double? precipcover;
    int? severerisk;
    String? description;
    List<CurrentConditions>? hours;

    CurrentConditions({
        this.datetime,
        this.datetimeEpoch,
        this.temp,
        this.feelslike,
        this.humidity,
        this.dew,
        this.precip,
        this.precipprob,
        this.snow,
        this.snowdepth,
        this.preciptype,
        this.windgust,
        this.windspeed,
        this.winddir,
        this.pressure,
        this.visibility,
        this.cloudcover,
        this.solarradiation,
        this.solarenergy,
        this.uvindex,
        this.conditions,
        this.icon,
        this.stations,
        this.source,
        this.sunrise,
        this.sunriseEpoch,
        this.sunset,
        this.sunsetEpoch,
        this.moonphase,
        this.tempmax,
        this.tempmin,
        this.feelslikemax,
        this.feelslikemin,
        this.precipcover,
        this.severerisk,
        this.description,
        this.hours,
    });

    factory CurrentConditions.fromJson(Map<String, dynamic> json) => CurrentConditions(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        dew: json["dew"]?.toDouble(),
        precip: json["precip"]?.toDouble(),
        precipprob: json["precipprob"]?.toDouble(),
        snow: json["snow"],
        snowdepth: json["snowdepth"],
        preciptype: json["preciptype"] == null ? [] : List<Icon>.from(json["preciptype"]!.map((x) => iconValues.map[x]!)),
        windgust: json["windgust"]?.toDouble(),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        solarradiation: json["solarradiation"]?.toDouble(),
        solarenergy: json["solarenergy"]?.toDouble(),
        uvindex: json["uvindex"],
        conditions: conditionsValues.map[json["conditions"]]!,
        icon: iconValues.map[json["icon"]]!,
        stations: json["stations"] == null ? [] : List<Station>.from(json["stations"]!.map((x) => stationValues.map[x]!)),
        source: sourceValues.map[json["source"]]!,
        sunrise: json["sunrise"],
        sunriseEpoch: json["sunriseEpoch"],
        sunset: json["sunset"],
        sunsetEpoch: json["sunsetEpoch"],
        moonphase: json["moonphase"]?.toDouble(),
        tempmax: json["tempmax"]?.toDouble(),
        tempmin: json["tempmin"]?.toDouble(),
        feelslikemax: json["feelslikemax"]?.toDouble(),
        feelslikemin: json["feelslikemin"]?.toDouble(),
        precipcover: json["precipcover"]?.toDouble(),
        severerisk: json["severerisk"],
        description: json["description"],
        hours: json["hours"] == null ? [] : List<CurrentConditions>.from(json["hours"]!.map((x) => CurrentConditions.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "dew": dew,
        "precip": precip,
        "precipprob": precipprob,
        "snow": snow,
        "snowdepth": snowdepth,
        "preciptype": preciptype == null ? [] : List<dynamic>.from(preciptype!.map((x) => iconValues.reverse[x])),
        "windgust": windgust,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "visibility": visibility,
        "cloudcover": cloudcover,
        "solarradiation": solarradiation,
        "solarenergy": solarenergy,
        "uvindex": uvindex,
        "conditions": conditionsValues.reverse[conditions],
        "icon": iconValues.reverse[icon],
        "stations": stations == null ? [] : List<dynamic>.from(stations!.map((x) => stationValues.reverse[x])),
        "source": sourceValues.reverse[source],
        "sunrise": sunrise,
        "sunriseEpoch": sunriseEpoch,
        "sunset": sunset,
        "sunsetEpoch": sunsetEpoch,
        "moonphase": moonphase,
        "tempmax": tempmax,
        "tempmin": tempmin,
        "feelslikemax": feelslikemax,
        "feelslikemin": feelslikemin,
        "precipcover": precipcover,
        "severerisk": severerisk,
        "description": description,
        "hours": hours == null ? [] : List<dynamic>.from(hours!.map((x) => x.toJson())),
    };
}

enum Conditions {
    OVERCAST,
    PARTIALLY_CLOUDY,
    RAIN,
    RAIN_OVERCAST,
    RAIN_PARTIALLY_CLOUDY
}

final conditionsValues = EnumValues({
    "Overcast": Conditions.OVERCAST,
    "Partially cloudy": Conditions.PARTIALLY_CLOUDY,
    "Rain": Conditions.RAIN,
    "Rain, Overcast": Conditions.RAIN_OVERCAST,
    "Rain, Partially cloudy": Conditions.RAIN_PARTIALLY_CLOUDY
});

enum Icon {
    CLOUDY,
    PARTLY_CLOUDY_DAY,
    PARTLY_CLOUDY_NIGHT,
    RAIN
}

final iconValues = EnumValues({
    "cloudy": Icon.CLOUDY,
    "partly-cloudy-day": Icon.PARTLY_CLOUDY_DAY,
    "partly-cloudy-night": Icon.PARTLY_CLOUDY_NIGHT,
    "rain": Icon.RAIN
});

enum Source {
    COMB,
    FCST,
    OBS
}

final sourceValues = EnumValues({
    "comb": Source.COMB,
    "fcst": Source.FCST,
    "obs": Source.OBS
});

enum Station {
    REMOTE,
    VNKT
}

final stationValues = EnumValues({
    "remote": Station.REMOTE,
    "VNKT": Station.VNKT
});

class Stations {
    Vnkt? vnkt;

    Stations({
        this.vnkt,
    });

    factory Stations.fromJson(Map<String, dynamic> json) => Stations(
        vnkt: json["VNKT"] == null ? null : Vnkt.fromJson(json["VNKT"]),
    );

    Map<String, dynamic> toJson() => {
        "VNKT": vnkt?.toJson(),
    };
}

class Vnkt {
    int? distance;
    double? latitude;
    double? longitude;
    int? useCount;
    Station? id;
    Station? name;
    int? quality;
    int? contribution;

    Vnkt({
        this.distance,
        this.latitude,
        this.longitude,
        this.useCount,
        this.id,
        this.name,
        this.quality,
        this.contribution,
    });

    factory Vnkt.fromJson(Map<String, dynamic> json) => Vnkt(
        distance: json["distance"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        useCount: json["useCount"],
        id: stationValues.map[json["id"]]!,
        name: stationValues.map[json["name"]]!,
        quality: json["quality"],
        contribution: json["contribution"],
    );

    Map<String, dynamic> toJson() => {
        "distance": distance,
        "latitude": latitude,
        "longitude": longitude,
        "useCount": useCount,
        "id": stationValues.reverse[id],
        "name": stationValues.reverse[name],
        "quality": quality,
        "contribution": contribution,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
