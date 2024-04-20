part of 'github_contributions_cubit.dart';

@immutable
sealed class GithubContributionsState {}

final class GithubContributionsInitial extends GithubContributionsState {}

class GithubContributionsLoading extends GithubContributionsState {}

class GithubContributionsSuccess extends GithubContributionsState {
  final List<GithubContributions> allData;
  GithubContributionsSuccess(this.allData);
}

class GithubContributionsFailure extends GithubContributionsState {
  final String message;
  GithubContributionsFailure(this.message);
}