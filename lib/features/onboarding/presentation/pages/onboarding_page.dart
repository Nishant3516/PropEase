import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_icon.dart';
import 'package:propease/core/widgets/app_text_button.dart';
import 'package:propease/features/onboarding/presentation/onboarding_page/onboarding_page_bloc.dart';
import 'package:propease/features/onboarding/presentation/widgets/onboarding_image_widget.dart';
import 'package:propease/gen/assets.gen.dart';

class OnboardingPageProvider extends StatelessWidget {
  const OnboardingPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingPageBloc(),
      child: const OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _controller;
  late final List<OnboardingImageWidgetProps> pages;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0, keepPage: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    pages = [
      OnboardingImageWidgetProps(
        imagePath: Assets.images.onboarding.onboarding1,
        heading: context.l10n.onboardingTitle1,
        description: context.l10n.onboardingDescription1,
      ),
      OnboardingImageWidgetProps(
        imagePath: Assets.images.onboarding.onboarding2,
        heading: context.l10n.onboardingTitle2,
        description: context.l10n.onboardingDescription2,
      ),
      OnboardingImageWidgetProps(
        imagePath: Assets.images.onboarding.onboarding3,
        heading: context.l10n.onboardingTitle3,
        description: context.l10n.onboardingDescription3,
      ),
    ];
  }

  void _goToPage(int index) {
    if (index < 0 || index >= pages.length) return;

    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    context.read<OnboardingPageBloc>().add(
      OnboardingPageChangedEvent(pageIndex: index, totalPages: pages.length),
    );
  }

  void _goToLoginPage() {
    context.push(AppPages.login.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: BlocConsumer<OnboardingPageBloc, OnboardingPageState>(
        listener: (context, state) {
          if (state is OnboardingCompleted) {
            _goToLoginPage();
          }
        },
        builder: (context, state) {
          switch (state) {
            case OnboardingCompleted():
              return Center(
                child: Text(
                  context.l10n.onboardingCompleted,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              );
            case OnboardingPageIndexState(:final currentPage):
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: AppTextButton(
                        text: context.l10n.skip,
                        onPressed: () => _goToLoginPage(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: PageView(
                        controller: _controller,
                        onPageChanged: (index) {
                          context.read<OnboardingPageBloc>().add(
                            OnboardingPageChangedEvent(
                              pageIndex: index,
                              totalPages: pages.length,
                            ),
                          );
                        },
                        children: pages
                            .map((props) => OnboardingImageWidget(props: props))
                            .toList(),
                      ),
                    ),
                    AppGaps.h24,
                    Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppIcon(
                            iconPath: Assets.icons.backArrowIc,
                            variant: AppIconVariant.circular,
                            backgroundColor: context.appColors.white,
                            iconColor: context.appColors.primary,
                            onPressed: () => _goToPage(currentPage - 1),
                          ),
                          Row(
                            children: List.generate(pages.length, (index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  right: pages.length - 1 == index
                                      ? 0
                                      : AppSpacing.sm,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: state.currentPage == index
                                      ? context.appColors.primary
                                      : Colors.grey,
                                ),
                                height: 10,
                                width: 10,
                              );
                            }),
                          ),
                          AppIcon(
                            iconPath: Assets.icons.nextArrowIc,
                            variant: AppIconVariant.circular,
                            backgroundColor: context.appColors.white,
                            iconColor: context.appColors.primary,
                            onPressed: () => _goToPage(currentPage + 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}
