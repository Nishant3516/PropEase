part of 'onboarding_page_bloc.dart';

sealed class OnboardingPageState extends Equatable {
  const OnboardingPageState();

  @override
  List<Object?> get props => [];
}

final class OnboardingPageIndexState extends OnboardingPageState {
  final int currentPage;

  const OnboardingPageIndexState(this.currentPage);

  @override
  List<Object?> get props => [currentPage];
}

final class OnboardingCompleted extends OnboardingPageState {
  const OnboardingCompleted();
}
