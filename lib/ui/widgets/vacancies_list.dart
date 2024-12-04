import 'package:each_job/domain/models/vacancy/vacancy.dart';
import 'package:each_job/ui/bloc/job_bloc.dart';
import 'package:each_job/ui/widgets/basic_progress_indicator.dart';
import 'package:each_job/ui/widgets/vacancy_tile.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VacanciesList extends StatefulWidget {
  const VacanciesList({
    super.key,
    required this.vacancies,
    required this.hasReachedMax,
    required this.scrollController
  });
  final List<Vacancy> vacancies;
  final bool hasReachedMax;
  final ScrollController scrollController;

  @override
  State<VacanciesList> createState() => _VacanciesListState();
}

class _VacanciesListState extends State<VacanciesList> {

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom){
      context.read<JobBloc>().add(const JobEvent.fetchPage());
    }
  }

  bool get _isBottom {
    if (!widget.scrollController.hasClients) return false;
    final maxScroll = widget.scrollController.position.maxScrollExtent;
    final currentScroll = widget.scrollController.offset;
    return currentScroll >= (maxScroll - 400);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.vacancies.length + (widget.hasReachedMax ? 0 : 1),
      separatorBuilder: (context, index) => const SizedBox(height: 15,),
      itemBuilder: (context, index) {
        if (index == widget.vacancies.length){
          return const BasicProgressIndicator();
        }
        return VacancyTile(vacancy: widget.vacancies[index]);
      },
    );
  }
}
