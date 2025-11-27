import "package:api_viewer/application/repo_search.dart";
import "package:api_viewer/domain/search_data.dart";
import "package:api_viewer/domain/search_result.dart";
import "package:api_viewer/presentation/access.dart";
import "package:api_viewer/presentation/details_screen.dart";
import "package:api_viewer/presentation/stars.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  SearchData? _searchData;
  SearchResult? _searchResult;

  @override
  Widget build(BuildContext context) {
    final asyncRepos = ref.watch(repoSearchProvider(_searchData));
    final pageNumber = _searchData?.pageNumber;
    final pageCount = _searchResult?.pageCount;

    return Scaffold(
      appBar: AppBar(
        title: const Text("GitHub Search"),
        actions: (pageCount == null || pageNumber == null)
            ? null
            : [
                IconButton(
                  onPressed: pageNumber <= 1
                      ? null
                      : () {
                          setState(() {
                            _searchData = _searchData?.copyWith(pageNumber: pageNumber - 1);
                          });
                        },
                  icon: const Icon(Icons.navigate_before),
                ),
                Text("Pages: $pageNumber / $pageCount"),
                IconButton(
                  onPressed: pageNumber >= pageCount
                      ? null
                      : () {
                          setState(() {
                            _searchData = _searchData?.copyWith(pageNumber: pageNumber + 1);
                          });
                        },
                  icon: const Icon(Icons.navigate_next),
                ),
              ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                labelText: "Search repository...",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _searchData = SearchData(query: value, pageNumber: 1);
                });
              },
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFillRemaining(
                  child: Column(
                    children: [
                      Expanded(
                        child: asyncRepos.when(
                          loading: () => const Center(child: CircularProgressIndicator()),
                          error: (e, s) => Center(child: Text("Error: $e\nStackTrace: $s")),
                          data: (searchResult) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (_searchResult != searchResult) {
                                setState(() {
                                  _searchResult = searchResult;
                                });
                              }
                            });
                            if (searchResult == null) return const SizedBox();
                            return ListView.builder(
                              itemCount: searchResult.repos.length,
                              itemBuilder: (_, i) {
                                final repo = searchResult.repos[i];
                                return ListTile(
                                  title: Text(repo.name),
                                  subtitle: Text(repo.description),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Stars(starCount: repo.stars),
                                      const SizedBox(width: 20),
                                      Access(isPrivate: repo.private),
                                    ],
                                  ),
                                  onTap: () => Navigator.push(
                                    context,
                                    CupertinoPageRoute<Widget>(
                                      builder: (BuildContext context) {
                                        return DetailsScreen(repo: repo);
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
