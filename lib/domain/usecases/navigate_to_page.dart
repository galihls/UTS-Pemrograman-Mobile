import '../../core/navigation/navigation_service.dart';

class NavigateToPageUseCase {
  final NavigationService navigationService;

  NavigateToPageUseCase(this.navigationService);

  void call(String route) {
    navigationService.navigateTo(route);
  }
}
