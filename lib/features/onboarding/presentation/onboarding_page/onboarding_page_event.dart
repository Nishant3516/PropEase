part of 'onboarding_page_bloc.dart';

sealed class OnboardingPageEvent extends Equatable {
  const OnboardingPageEvent();

  @override
  List<Object> get props => [];
}

class OnboardingPageChangedEvent extends OnboardingPageEvent {
  final int pageIndex;
  final int totalPages;

  const OnboardingPageChangedEvent({
    required this.pageIndex,
    required this.totalPages,
  });

  @override
  List<Object> get props => [pageIndex, totalPages];
}
