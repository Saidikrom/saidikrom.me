
import 'dart:convert';

GithubContributions githubContributionsFromJson(String str) =>
    GithubContributions.fromJson(json.decode(str));

String githubContributionsToJson(GithubContributions data) =>
    json.encode(data.toJson());

class GithubContributions {
  String username;
  String year;
  int min;
  int max;
  int median;
  double p80;
  int p90;
  int p99;
  List<Contribution> contributions;

  GithubContributions({
    required this.username,
    required this.year,
    required this.min,
    required this.max,
    required this.median,
    required this.p80,
    required this.p90,
    required this.p99,
    required this.contributions,
  });

  factory GithubContributions.fromJson(Map<String, dynamic> json) =>
      GithubContributions(
        username: json["username"],
        year: json["year"],
        min: json["min"],
        max: json["max"],
        median: json["median"],
        p80: json["p80"]?.toDouble(),
        p90: json["p90"],
        p99: json["p99"],
        contributions: List<Contribution>.from(
            json["contributions"].map((x) => Contribution.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "year": year,
        "min": min,
        "max": max,
        "median": median,
        "p80": p80,
        "p90": p90,
        "p99": p99,
        "contributions":
            List<dynamic>.from(contributions.map((x) => x.toJson())),
      };
}

class Contribution {
  int week;
  List<Day> days;

  Contribution({
    required this.week,
    required this.days,
  });

  factory Contribution.fromJson(Map<String, dynamic> json) => Contribution(
        week: json["week"],
        days: List<Day>.from(json["days"].map((x) => Day.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "week": week,
        "days": List<dynamic>.from(days.map((x) => x.toJson())),
      };
}

class Day {
  int count;

  Day({
    required this.count,
  });

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
      };
}
