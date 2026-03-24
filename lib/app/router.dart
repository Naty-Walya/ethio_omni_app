import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/auth/presentation/screens/login_screen.dart';
import 'package:ethio_omni_app/features/auth/presentation/screens/register_screen.dart';
import 'package:ethio_omni_app/features/home/presentation/screens/home_screen.dart';
import 'package:ethio_omni_app/features/freight/presentation/screens/available_posts_screen.dart';
import 'package:ethio_omni_app/features/freight/presentation/screens/create_post_screen.dart';
import 'package:ethio_omni_app/features/wallet/presentation/screens/wallet_screen.dart';
import 'package:ethio_omni_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:ethio_omni_app/features/auction/presentation/screens/auctions_list_screen.dart';
import 'package:ethio_omni_app/features/auction/presentation/screens/auction_room_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/freight/posts',
        name: 'freightPosts',
        builder: (context, state) => const AvailablePostsScreen(),
      ),
      GoRoute(
        path: '/freight/create',
        name: 'createFreightPost',
        builder: (context, state) => const CreatePostScreen(),
      ),
      GoRoute(
        path: '/wallet',
        name: 'wallet',
        builder: (context, state) => const WalletScreen(),
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/auctions',
        name: 'auctions',
        builder: (context, state) => const AuctionsListScreen(),
      ),
      GoRoute(
        path: '/auctions/:id',
        name: 'auction',
        builder: (context, state) {
          final auctionId = state.pathParameters['id']!;
          return AuctionRoomScreen(auctionId: auctionId);
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.uri.path}'),
      ),
    ),
  );
});
