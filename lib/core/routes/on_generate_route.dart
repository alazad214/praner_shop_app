import 'package:flutter/cupertino.dart';
import 'package:praner_shop/app/modules/search/search_result_page.dart';
import '../../app/modules/auth/views/forget_screen.dart';
import '../../app/modules/auth/views/welcome_screen.dart';
import '../../app/modules/auth/views/signin_screen.dart';
import '../../app/modules/auth/views/verification_screen.dart';
import '../../app/modules/auth/views/new_password.dart';
import '../../app/modules/auth/views/signup_screen.dart';
import '../../app/modules/drawer/views/about_screen.dart';
import '../../app/modules/drawer/views/contact_us_page.dart';
import '../../app/modules/home/bundle_details_page.dart';
import '../../app/modules/details/views/products_details.dart';
import '../../app/modules/home/order_failed_page.dart';
import '../../app/modules/home/views/order_successfull_screen.dart';
import '../../app/modules/home/popular_pack_page.dart';
import '../../app/modules/onboarding/view/splash_screen.dart';
import '../../app/modules/search/search_page.dart';
import '../../app/modules/main/views/main_screen.dart';
import '../../app/modules/onboarding/view/onboarding_screen.dart';
import '../../app/modules/profile/coupon/coupon_details_page.dart';
import '../../app/modules/profile/coupon/coupon_page.dart';
import '../../app/modules/profile/components/notification_page.dart';
import '../../app/modules/profile/order/views/my_order_page.dart';
import '../../app/modules/profile/order/views/order_details.dart';
import '../../app/modules/profile/settings/change_password_page.dart';
import '../../app/modules/profile/settings/change_phone_number_page.dart';
import '../../app/modules/profile/settings/notifications_settings_page.dart';
import '../../app/modules/review/review_page.dart';
import '../../app/modules/review/submit_review_page.dart';
import 'app_routes.dart';
import 'unknown_page.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case AppRoutes.splash:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());

      case AppRoutes.introLogin:
        return CupertinoPageRoute(builder: (_) => const WelcomeScreen());

      case AppRoutes.onboarding:
        return CupertinoPageRoute(builder: (_) => OnboardingScreen());

      case AppRoutes.login:
        return CupertinoPageRoute(builder: (_) => LoginScreen());

      case AppRoutes.entryPoint:
        return CupertinoPageRoute(builder: (_) => const MainScreen());

      case AppRoutes.search:
        return CupertinoPageRoute(builder: (_) => const SearchPage());

      case AppRoutes.searchResult:
        return CupertinoPageRoute(builder: (_) => const SearchResultPage());

      case AppRoutes.signup:
        return CupertinoPageRoute(builder: (_) => const SignupScreen());
      case AppRoutes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => const ForgetScreen());

      case AppRoutes.numberVerification:
        return CupertinoPageRoute(builder: (_) => const VerificationScreen());

      case AppRoutes.passwordReset:
        return CupertinoPageRoute(builder: (_) => const NewPassword());

      case AppRoutes.popularItems:
        return CupertinoPageRoute(builder: (_) => const PopularPackPage());

      case AppRoutes.productDetails:
        return CupertinoPageRoute(builder: (_) => ProductDetails());

      case AppRoutes.bundleDetailsPage:
        return CupertinoPageRoute(builder: (_) => const BundleDetailsPage());

      case AppRoutes.orderSuccessfull:
        return CupertinoPageRoute(builder: (_) => const OrderSuccessfullPage());

      case AppRoutes.orderFailed:
        return CupertinoPageRoute(builder: (_) => const OrderFailedPage());

      case AppRoutes.myOrder:
        return CupertinoPageRoute(builder: (_) => const AllOrderPage());

      case AppRoutes.orderDetails:
        return CupertinoPageRoute(builder: (_) => const OrderDetailsPage());

      case AppRoutes.coupon:
        return CupertinoPageRoute(builder: (_) => const CouponAndOffersPage());

      case AppRoutes.couponDetails:
        return CupertinoPageRoute(builder: (_) => const CouponDetailsPage());

      case AppRoutes.notifications:
        return CupertinoPageRoute(builder: (_) => const NotificationPage());

      case AppRoutes.settingsNotifications:
        return CupertinoPageRoute(
            builder: (_) => const NotificationSettingsPage());

      case AppRoutes.changePassword:
        return CupertinoPageRoute(builder: (_) => const ChangePasswordPage());

      case AppRoutes.changePhoneNumber:
        return CupertinoPageRoute(
            builder: (_) => const ChangePhoneNumberPage());

      case AppRoutes.review:
        return CupertinoPageRoute(builder: (_) => const ReviewPage());

      case AppRoutes.submitReview:
        return CupertinoPageRoute(builder: (_) => const SubmitReviewPage());

      case AppRoutes.aboutUs:
        return CupertinoPageRoute(builder: (_) => const AboutScreen());

      case AppRoutes.contactUs:
        return CupertinoPageRoute(builder: (_) => const ContactUsPage());

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
