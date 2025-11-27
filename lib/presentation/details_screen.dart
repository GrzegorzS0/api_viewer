import "package:api_viewer/domain/repo.dart";
import "package:api_viewer/presentation/access.dart";
import "package:api_viewer/presentation/stars.dart";
import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.repo, super.key});

  final Repo repo;

  Future<void> _openGitHub() async {
    final url = Uri.parse(repo.url);
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(repo.name),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description: ${repo.description}"),
                  Text("Forks: ${repo.forks}"),
                  Text("Language: ${repo.language}"),
                  Text("Created at: ${repo.createdAt}"),
                  Text("Updated at: ${repo.updatedAt}"),
                  Text("Pushed at: ${repo.pushedAt}"),
                  Row(
                    children: [
                      Access(isPrivate: repo.private),
                      Text(
                        repo.private ? "Private" : "Public",
                      ),
                    ],
                  ),
                  Stars(starCount: repo.stars),
                  ElevatedButton(
                    onPressed: _openGitHub,
                    child: const Text("Open on GitHub"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
