import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';

// Use polling first on web for better compatibility
final _transports = kIsWeb ? ['polling', 'websocket'] : ['websocket'];

final socketServiceProvider = Provider<SocketService>((ref) {
  final dio = ref.watch(dioClientProvider);
  return SocketService(dio);
});

class SocketService {
  io.Socket? _socket;
  final DioClient _dioClient;

  // Event listeners
  final _bidListeners = <void Function(Map<String, dynamic> bid)>[];
  final _auctionEndListeners = <void Function(Map<String, dynamic> data)>[];
  final _outbidListeners = <void Function(Map<String, dynamic> data)>[];
  final _locationListeners = <void Function(Map<String, dynamic> location)>[];

  SocketService(this._dioClient);

  bool get isConnected => _socket?.connected ?? false;

  Future<void> connect() async {
    if (_socket != null) return;

    final token = await _dioClient.getAuthToken();

    _socket = io.io(
      kDebugMode ? 'http://localhost:3002' : 'https://api.ethio-omni.com',
      io.OptionBuilder()
          .setTransports(_transports)
          .enableAutoConnect()
          .enableForceNew()
          .setQuery({'token': token ?? ''})
          .build(),
    );

    _setupEventHandlers();
  }

  void disconnect() {
    _socket?.disconnect();
    _socket = null;
  }

  void _setupEventHandlers() {
    _socket?.onConnect((_) {
      debugPrint('🔌 Socket connected');
    });

    _socket?.onDisconnect((_) {
      debugPrint('🔌 Socket disconnected');
    });

    _socket?.onConnectError((error) {
      debugPrint('🔌 Socket connection error: $error');
    });

    _socket?.onError((error) {
      debugPrint('🔌 Socket error: $error');
    });

    // Auction events
    _socket?.on('new-bid', (data) {
      debugPrint('🔨 New bid received: $data');
      for (final listener in _bidListeners) {
        listener(data as Map<String, dynamic>);
      }
    });

    _socket?.on('auction-ended', (data) {
      debugPrint('🏁 Auction ended: $data');
      for (final listener in _auctionEndListeners) {
        listener(data as Map<String, dynamic>);
      }
    });

    _socket?.on('auction-won', (data) {
      debugPrint('🏆 Auction won: $data');
      for (final listener in _auctionEndListeners) {
        listener(data as Map<String, dynamic>);
      }
    });

    _socket?.on('outbid-alert', (data) {
      debugPrint('⚠️ Outbid alert: $data');
      for (final listener in _outbidListeners) {
        listener(data as Map<String, dynamic>);
      }
    });

    _socket?.on('auction-state', (data) {
      debugPrint('📊 Auction state: $data');
    });

    // Location tracking events
    _socket?.on('driver-location', (data) {
      debugPrint('📍 Driver location: $data');
      for (final listener in _locationListeners) {
        listener(data as Map<String, dynamic>);
      }
    });

    _socket?.on('user-joined', (data) {
      debugPrint('👤 User joined auction: $data');
    });

    _socket?.on('user-left', (data) {
      debugPrint('👤 User left auction: $data');
    });

    _socket?.on('auction-error', (data) {
      debugPrint('❌ Auction error: $data');
    });
  }

  // Join auction room
  void joinAuction(String auctionId, String userId, String role) {
    if (_socket == null || !_socket!.connected) {
      debugPrint('Socket not connected, cannot join auction');
      return;
    }

    _socket!.emit('join-auction', {
      'auctionId': auctionId,
      'userId': userId,
      'role': role,
    });
  }

  // Leave auction room
  void leaveAuction(String auctionId) {
    _socket?.emit('leave-auction', {'auctionId': auctionId});
  }

  // Place bid
  void placeBid(String auctionId, double amount, String userId) {
    if (_socket == null || !_socket!.connected) {
      debugPrint('Socket not connected, cannot place bid');
      return;
    }

    _socket!.emit('place-bid', {
      'auctionId': auctionId,
      'amount': amount,
      'userId': userId,
    });
  }

  // Track job location
  void trackJob(String jobId, String role) {
    _socket?.emit('track-job', {
      'jobId': jobId,
      'role': role,
    });
  }

  // Stop tracking job
  void stopTrackingJob(String jobId) {
    _socket?.emit('stop-tracking', {'jobId': jobId});
  }

  // Send location update (for driver)
  void sendLocationUpdate(String jobId, double lat, double lng) {
    _socket?.emit('location-update', {
      'jobId': jobId,
      'lat': lat,
      'lng': lng,
    });
  }

  // Event listeners
  void onNewBid(void Function(Map<String, dynamic> bid) listener) {
    _bidListeners.add(listener);
  }

  void removeOnNewBid(void Function(Map<String, dynamic> bid) listener) {
    _bidListeners.remove(listener);
  }

  void onAuctionEnd(void Function(Map<String, dynamic> data) listener) {
    _auctionEndListeners.add(listener);
  }

  void removeOnAuctionEnd(void Function(Map<String, dynamic> data) listener) {
    _auctionEndListeners.remove(listener);
  }

  void onOutbid(void Function(Map<String, dynamic> data) listener) {
    _outbidListeners.add(listener);
  }

  void removeOnOutbid(void Function(Map<String, dynamic> data) listener) {
    _outbidListeners.remove(listener);
  }

  void onLocationUpdate(void Function(Map<String, dynamic> location) listener) {
    _locationListeners.add(listener);
  }

  void removeOnLocationUpdate(void Function(Map<String, dynamic> location) listener) {
    _locationListeners.remove(listener);
  }

  void dispose() {
    _bidListeners.clear();
    _auctionEndListeners.clear();
    _outbidListeners.clear();
    _locationListeners.clear();
    disconnect();
  }
}
