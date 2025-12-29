enum AppPages {
  splash(path: '/splash', name: 'splash'),
  onboarding(path: '/onboarding', name: 'onboarding'),
  home(path: '/', name: 'home'),
  profile(path: '/profile', name: 'profile'),
  login(path: '/login', name: 'login'),
  signup(path: '/signup', name: 'signup');

  final String path;
  final String name;

  const AppPages({required this.path, required this.name});
}
