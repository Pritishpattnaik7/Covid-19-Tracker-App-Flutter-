class StatesResponse {
  bool success;
  Data data;
  String lastRefreshed;
  String lastOriginUpdate;

  StatesResponse(
      {this.success, this.data, this.lastRefreshed, this.lastOriginUpdate});

  StatesResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    lastRefreshed = json['lastRefreshed'];
    lastOriginUpdate = json['lastOriginUpdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['lastRefreshed'] = this.lastRefreshed;
    data['lastOriginUpdate'] = this.lastOriginUpdate;
    return data;
  }
}

class Data {
  Summary summary;
  List<UnofficialSummary> unofficialSummary;
  List<Regional> regional;

  Data({this.summary, this.unofficialSummary, this.regional});

  Data.fromJson(Map<String, dynamic> json) {
    summary =
        json['summary'] != null ? new Summary.fromJson(json['summary']) : null;
    if (json['unofficial-summary'] != null) {
      unofficialSummary = new List<UnofficialSummary>();
      json['unofficial-summary'].forEach((v) {
        unofficialSummary.add(new UnofficialSummary.fromJson(v));
      });
    }
    if (json['regional'] != null) {
      regional = new List<Regional>();
      json['regional'].forEach((v) {
        regional.add(new Regional.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.summary != null) {
      data['summary'] = this.summary.toJson();
    }
    if (this.unofficialSummary != null) {
      data['unofficial-summary'] =
          this.unofficialSummary.map((v) => v.toJson()).toList();
    }
    if (this.regional != null) {
      data['regional'] = this.regional.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Summary {
  int total;
  int confirmedCasesIndian;
  int confirmedCasesForeign;
  int discharged;
  int deaths;
  int confirmedButLocationUnidentified;

  Summary(
      {this.total,
      this.confirmedCasesIndian,
      this.confirmedCasesForeign,
      this.discharged,
      this.deaths,
      this.confirmedButLocationUnidentified});

  Summary.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    confirmedCasesIndian = json['confirmedCasesIndian'];
    confirmedCasesForeign = json['confirmedCasesForeign'];
    discharged = json['discharged'];
    deaths = json['deaths'];
    confirmedButLocationUnidentified = json['confirmedButLocationUnidentified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['confirmedCasesIndian'] = this.confirmedCasesIndian;
    data['confirmedCasesForeign'] = this.confirmedCasesForeign;
    data['discharged'] = this.discharged;
    data['deaths'] = this.deaths;
    data['confirmedButLocationUnidentified'] =
        this.confirmedButLocationUnidentified;
    return data;
  }
}

class UnofficialSummary {
  String source;
  int total;
  int recovered;
  int deaths;
  int active;

  UnofficialSummary(
      {this.source, this.total, this.recovered, this.deaths, this.active});

  UnofficialSummary.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    total = json['total'];
    recovered = json['recovered'];
    deaths = json['deaths'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    data['total'] = this.total;
    data['recovered'] = this.recovered;
    data['deaths'] = this.deaths;
    data['active'] = this.active;
    return data;
  }
}

class Regional {
  String loc;
  int confirmedCasesIndian;
  int confirmedCasesForeign;
  int discharged;
  int deaths;
  int totalConfirmed;

  Regional(
      {this.loc,
      this.confirmedCasesIndian,
      this.confirmedCasesForeign,
      this.discharged,
      this.deaths,
      this.totalConfirmed});

  Regional.fromJson(Map<String, dynamic> json) {
    loc = json['loc'];
    confirmedCasesIndian = json['confirmedCasesIndian'];
    confirmedCasesForeign = json['confirmedCasesForeign'];
    discharged = json['discharged'];
    deaths = json['deaths'];
    totalConfirmed = json['totalConfirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loc'] = this.loc;
    data['confirmedCasesIndian'] = this.confirmedCasesIndian;
    data['confirmedCasesForeign'] = this.confirmedCasesForeign;
    data['discharged'] = this.discharged;
    data['deaths'] = this.deaths;
    data['totalConfirmed'] = this.totalConfirmed;
    return data;
  }
}
