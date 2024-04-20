import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:saidikromme/models/github_contributions_model.dart';

part 'github_contributions_state.dart';

class GithubContributionsCubit extends Cubit<GithubContributionsState> {
  GithubContributionsCubit() : super(GithubContributionsInitial());

  static List<GithubContributions> allData = [];
  void fetchProducts() async {
    emit(GithubContributionsLoading());
    final dio = Dio();
    try {
      print(await dio.get('https://skyline.github.com/saidikrom/2023'));
      final response =
          await dio.get('https://skyline.github.com/saidikrom/2023.json');

      allData = (response.data as List)
          .map((e) => GithubContributions.fromJson(e))
          .toList();

      emit(GithubContributionsSuccess(allData));
    } catch (e) {
      print(e);
      emit(GithubContributionsFailure(e.toString()));
    }
  }
}
