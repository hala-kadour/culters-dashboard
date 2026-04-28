import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/customers/presentation/pages/customers_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/product/presentation/pages/add_product_page.dart';
import '../../features/product/presentation/pages/edit_product_page.dart';
import '../../features/product/presentation/pages/products_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/transaction/presentation/pages/transactions_page.dart';
import '../../main_page.dart';

abstract class AppRouter {
  static const String loginPath = '/login';
  static const String dashboardPath = '/dashboard';
  static const String productsPath = '/products';
  static const String addProductsPath = 'add';
  static const String editProductsPath = 'edit';
  static const String transactionsPath = '/transactions';
  static const String customersPath = '/customers';
  static const String profilePath = "/profile";

  static final router = GoRouter(
    initialLocation: loginPath,
    routes: [
      GoRoute(
        path: loginPath,
        name: 'login',
        builder: (context, state) => LoginPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => MainPage(shell: shell),
        branches: [
          // Dashboard Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: dashboardPath,
                name: 'dashboard',
                builder: (context, state) => DashboardPage(),
              ),
            ],
          ),
          // Products Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: productsPath,
                name: 'products',
                builder: (context, state) => ProductsPage(),
                routes: [
                  GoRoute(
                    path: addProductsPath,
                    name: 'add_product',
                    builder: (context, state) => AddProductPage(),
                  ),
                  GoRoute(
                    path: editProductsPath,
                    name: 'edit_product',
                    builder: (context, state) => EditProductPage(),
                  ),
                ],
              ),
            ],
          ),
          // Transactions Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: transactionsPath,
                name: 'transactions',
                builder: (context, state) => TransactionsPage(),
              ),
            ],
          ),
          // Customers Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: customersPath,
                name: 'customers',
                builder: (context, state) => CustomersPage(),
              ),
            ],
          ),
          // Profile Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: profilePath,
                name: 'profile',
                builder: (context, state) => ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
