import "package:api_viewer/domain/repo.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  test("Repo.fromJson creates a valid Repo instance", () {
    final json = {
      "name": "flutter",
      "private": false,
      "forks": 42,
      "created_at": "2020-01-01T12:00:00Z",
      "updated_at": "2020-02-01T12:00:00Z",
      "pushed_at": "2020-03-01T12:00:00Z",
      "html_url": "https://github.com/flutter/flutter",
      "stargazers_count": 9999,
      "language": "Dart",
      "description": "Flutter framework",
    };

    final repo = Repo.fromJson(json);

    expect(repo.name, "flutter");
    expect(repo.private, false);
    expect(repo.forks, 42);

    expect(repo.createdAt, DateTime.parse("2020-01-01T12:00:00Z"));
    expect(repo.updatedAt, DateTime.parse("2020-02-01T12:00:00Z"));
    expect(repo.pushedAt, DateTime.parse("2020-03-01T12:00:00Z"));

    expect(repo.url, "https://github.com/flutter/flutter");
    expect(repo.stars, 9999);

    expect(repo.language, "Dart");
    expect(repo.description, "Flutter framework");
  });

  test("Repo.fromJson sets default values when missing in JSON", () {
    final json = {
      "name": "flutter",
      "private": false,
      "forks": 0,
      "created_at": "2020-01-01T12:00:00Z",
      "updated_at": "2020-01-02T12:00:00Z",
      "pushed_at": "2020-01-03T12:00:00Z",
      "html_url": "https://github.com/flutter/flutter",
      "stargazers_count": 10,
    };

    final repo = Repo.fromJson(json);

    expect(repo.language, "Unknown");
    expect(repo.description, "");
  });
}
