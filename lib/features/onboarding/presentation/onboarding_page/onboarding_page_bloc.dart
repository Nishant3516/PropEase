import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_page_event.dart';
part 'onboarding_page_state.dart';

class OnboardingPageBloc
    extends Bloc<OnboardingPageEvent, OnboardingPageState> {
  OnboardingPageBloc() : super(OnboardingPageIndexState(0)) {
    on<OnboardingPageChangedEvent>(_changePage);
  }

  Future<void> _changePage(
    OnboardingPageChangedEvent event,
    Emitter<OnboardingPageState> emit,
  ) async {
    if (event.pageIndex < event.totalPages - 1) {
      emit(OnboardingPageIndexState(event.pageIndex));
    } else {
      emit(OnboardingCompleted());
    }
  }
}
