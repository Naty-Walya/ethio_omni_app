import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_om.dart';
import 'app_localizations_ti.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('en'),
    Locale('fr'),
    Locale('om'),
    Locale('ti'),
  ];

  /// The app name
  ///
  /// In en, this message translates to:
  /// **'Ethio-Omni'**
  String get appName;

  /// Welcome message
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// Welcome subtitle
  ///
  /// In en, this message translates to:
  /// **'Your trusted freight exchange platform'**
  String get welcomeSubtitle;

  /// Login button text
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// Register button text
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// Phone number field label
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// Password field label
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Confirm password field label
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// Forgot password link
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// Don't have account text
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// Already have account text
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// Sign up button text
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Sign in button text
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Home navigation label
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Jobs navigation label
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobs;

  /// Auctions navigation label
  ///
  /// In en, this message translates to:
  /// **'Auctions'**
  String get auctions;

  /// Wallet navigation label
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// Profile navigation label
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Shipper role label
  ///
  /// In en, this message translates to:
  /// **'Shipper'**
  String get shipper;

  /// Driver role label
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get driver;

  /// Fleet owner role label
  ///
  /// In en, this message translates to:
  /// **'Fleet Owner'**
  String get fleetOwner;

  /// Select role prompt
  ///
  /// In en, this message translates to:
  /// **'Select your role'**
  String get selectRole;

  /// Freight posts title
  ///
  /// In en, this message translates to:
  /// **'Freight Posts'**
  String get freightPosts;

  /// Post freight button
  ///
  /// In en, this message translates to:
  /// **'Post Freight'**
  String get postFreight;

  /// Pickup location field
  ///
  /// In en, this message translates to:
  /// **'Pickup Location'**
  String get pickupLocation;

  /// Delivery location field
  ///
  /// In en, this message translates to:
  /// **'Delivery Location'**
  String get deliveryLocation;

  /// Cargo type field
  ///
  /// In en, this message translates to:
  /// **'Cargo Type'**
  String get cargoType;

  /// Weight field
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// Dimensions field
  ///
  /// In en, this message translates to:
  /// **'Dimensions'**
  String get dimensions;

  /// Budget field
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get budget;

  /// Description field
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Submit button
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Edit button
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Confirm button
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Reject button
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// Accept button
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// Bid button
  ///
  /// In en, this message translates to:
  /// **'Bid'**
  String get bid;

  /// Bids title
  ///
  /// In en, this message translates to:
  /// **'Bids'**
  String get bids;

  /// Place bid button
  ///
  /// In en, this message translates to:
  /// **'Place Bid'**
  String get placeBid;

  /// Bid amount field
  ///
  /// In en, this message translates to:
  /// **'Bid Amount'**
  String get bidAmount;

  /// Estimated delivery field
  ///
  /// In en, this message translates to:
  /// **'Estimated Delivery'**
  String get estimatedDelivery;

  /// My bids title
  ///
  /// In en, this message translates to:
  /// **'My Bids'**
  String get myBids;

  /// Active jobs title
  ///
  /// In en, this message translates to:
  /// **'Active Jobs'**
  String get activeJobs;

  /// Completed jobs title
  ///
  /// In en, this message translates to:
  /// **'Completed Jobs'**
  String get completedJobs;

  /// Job details title
  ///
  /// In en, this message translates to:
  /// **'Job Details'**
  String get jobDetails;

  /// Track job button
  ///
  /// In en, this message translates to:
  /// **'Track Job'**
  String get trackJob;

  /// Confirm pickup button
  ///
  /// In en, this message translates to:
  /// **'Confirm Pickup'**
  String get confirmPickup;

  /// Confirm delivery button
  ///
  /// In en, this message translates to:
  /// **'Confirm Delivery'**
  String get confirmDelivery;

  /// Pickup confirmed status
  ///
  /// In en, this message translates to:
  /// **'Pickup Confirmed'**
  String get pickupConfirmed;

  /// Delivery confirmed status
  ///
  /// In en, this message translates to:
  /// **'Delivery Confirmed'**
  String get deliveryConfirmed;

  /// In transit status
  ///
  /// In en, this message translates to:
  /// **'In Transit'**
  String get inTransit;

  /// Delivered status
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// Pending status
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// Completed status
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// Available balance label
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get availableBalance;

  /// Deposit button
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// Withdraw button
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get withdraw;

  /// Transaction history title
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transactionHistory;

  /// Amount field
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// Payment method field
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// TeleBirr payment method
  ///
  /// In en, this message translates to:
  /// **'TeleBirr'**
  String get telebirr;

  /// Notifications title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Mark all read button
  ///
  /// In en, this message translates to:
  /// **'Mark all as read'**
  String get markAllRead;

  /// No notifications message
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get noNotifications;

  /// Settings title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Language setting
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Select language prompt
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Logout button
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Confirmation question
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// Yes button
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No button
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// Error title
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Success title
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Loading text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Retry button
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Search hint
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Filter button
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// Sort button
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// Date label
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// Time label
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// Location label
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// Status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// Price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// Total label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// Subtotal label
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// Tax label
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// Fee label
  ///
  /// In en, this message translates to:
  /// **'Fee'**
  String get fee;

  /// Discount label
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// Apply button
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// Clear button
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Done button
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Close button
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Next button
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Back button
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Skip button
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Continue button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Finish button
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// Optional field label
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// Required field indicator
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// Invalid input error
  ///
  /// In en, this message translates to:
  /// **'Invalid input'**
  String get invalidInput;

  /// Required field error
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// Invalid phone error
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhone;

  /// Invalid email error
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get invalidEmail;

  /// Password too short error
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordTooShort;

  /// Passwords don't match error
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match'**
  String get passwordsDontMatch;

  /// No data message
  ///
  /// In en, this message translates to:
  /// **'No data available'**
  String get noData;

  /// Pull to refresh hint
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh'**
  String get pullToRefresh;

  /// Tap to retry hint
  ///
  /// In en, this message translates to:
  /// **'Tap to retry'**
  String get tapToRetry;

  /// See all link
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// View details button
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// Show more link
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// Show less link
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get showLess;

  /// Kilometers abbreviation
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get km;

  /// Kilograms abbreviation
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kg;

  /// Ton abbreviation
  ///
  /// In en, this message translates to:
  /// **'ton'**
  String get ton;

  /// Ethiopian Birr currency
  ///
  /// In en, this message translates to:
  /// **'ETB'**
  String get etb;

  /// QR Code title
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qrCode;

  /// Scan QR code button
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQRCode;

  /// Show QR code button
  ///
  /// In en, this message translates to:
  /// **'Show QR Code'**
  String get showQRCode;

  /// AI Predictions title
  ///
  /// In en, this message translates to:
  /// **'AI Predictions'**
  String get aiPredictions;

  /// Demand forecast title
  ///
  /// In en, this message translates to:
  /// **'Demand Forecast'**
  String get demandForecast;

  /// Price recommendation title
  ///
  /// In en, this message translates to:
  /// **'Price Recommendation'**
  String get priceRecommendation;

  /// Fraud alert title
  ///
  /// In en, this message translates to:
  /// **'Fraud Alert'**
  String get fraudAlert;

  /// Security label
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// Risk score label
  ///
  /// In en, this message translates to:
  /// **'Risk Score'**
  String get riskScore;

  /// Low level
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// Medium level
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// High level
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// Critical level
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get critical;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'am',
    'ar',
    'en',
    'fr',
    'om',
    'ti',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'om':
      return AppLocalizationsOm();
    case 'ti':
      return AppLocalizationsTi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
