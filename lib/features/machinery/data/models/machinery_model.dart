import 'package:freezed_annotation/freezed_annotation.dart';

part 'machinery_model.freezed.dart';
part 'machinery_model.g.dart';

@freezed
class MachineryModel with _$MachineryModel {
  const factory MachineryModel({
    required String id,
    required String name,
    required String type,
    required String description,
    required double hourlyRate,
    required double dailyRate,
    required String currency,
    String? imageUrl,
    String? ownerId,
    String? ownerName,
    double? ownerRating,
    String? location,
    double? latitude,
    double? longitude,
    @Default(true) bool isAvailable,
    @Default(0) int totalRentals,
    DateTime? createdAt,
    List<String>? features,
    Map<String, dynamic>? specifications,
  }) = _MachineryModel;

  factory MachineryModel.fromJson(Map<String, dynamic> json) =>
      _$MachineryModelFromJson(json);
}

@freezed
class RentalBookingModel with _$RentalBookingModel {
  const factory RentalBookingModel({
    required String id,
    required String machineryId,
    required String machineryName,
    required String renterId,
    required String ownerId,
    required DateTime startDate,
    required DateTime endDate,
    required double totalAmount,
    required String currency,
    required String status,
    String? deliveryLocation,
    double? deliveryLatitude,
    double? deliveryLongitude,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RentalBookingModel;

  factory RentalBookingModel.fromJson(Map<String, dynamic> json) =>
      _$RentalBookingModelFromJson(json);
}

@freezed
class CreateRentalRequest with _$CreateRentalRequest {
  const factory CreateRentalRequest({
    required String machineryId,
    required DateTime startDate,
    required DateTime endDate,
    String? deliveryLocation,
    double? deliveryLatitude,
    double? deliveryLongitude,
    String? notes,
  }) = _CreateRentalRequest;

  factory CreateRentalRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRentalRequestFromJson(json);
}
