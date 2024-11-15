import '../../domain/usecases/navigate_to_page.dart';

class HomeController {
  final NavigateToPageUseCase navigateToPage;

  HomeController(this.navigateToPage);

  void onNavigateToPage(String route) {
    navigateToPage.call(route);
  }
}
