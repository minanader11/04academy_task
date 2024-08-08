// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `success`
  String get success {
    return Intl.message(
      'success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get loading {
    return Intl.message(
      '',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `error`
  String get error {
    return Intl.message(
      'error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get errorButton {
    return Intl.message(
      'Ok',
      name: 'errorButton',
      desc: '',
      args: [],
    );
  }

  /// `No DataFound`
  String get noDataFound {
    return Intl.message(
      'No DataFound',
      name: 'noDataFound',
      desc: '',
      args: [],
    );
  }

  /// `required`
  String get required {
    return Intl.message(
      'required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Password Required`
  String get passwordRequired {
    return Intl.message(
      'Password Required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Password`
  String get invalidPassword {
    return Intl.message(
      'Invalid Password',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `emailRequired`
  String get emailRequired {
    return Intl.message(
      'emailRequired',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `invalidEmail`
  String get invalidEmail {
    return Intl.message(
      'invalidEmail',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get fillRequired {
    return Intl.message(
      'Required',
      name: 'fillRequired',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Login Done`
  String get loginDone {
    return Intl.message(
      'Login Done',
      name: 'loginDone',
      desc: '',
      args: [],
    );
  }

  /// `registerDone`
  String get registerDone {
    return Intl.message(
      'registerDone',
      name: 'registerDone',
      desc: '',
      args: [],
    );
  }

  /// `logout`
  String get logout {
    return Intl.message(
      'logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to log out?`
  String get exit {
    return Intl.message(
      'Are you sure to log out?',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `no`
  String get no {
    return Intl.message(
      'no',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get welcome {
    return Intl.message(
      'Welcome back',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Choose Train`
  String get chooseTrain {
    return Intl.message(
      'Choose Train',
      name: 'chooseTrain',
      desc: '',
      args: [],
    );
  }

  /// `Is Required`
  String get isReq {
    return Intl.message(
      'Is Required',
      name: 'isReq',
      desc: '',
      args: [],
    );
  }

  /// `Check mobile`
  String get mobVal {
    return Intl.message(
      'Check mobile',
      name: 'mobVal',
      desc: '',
      args: [],
    );
  }

  /// `Check Password`
  String get passCheck {
    return Intl.message(
      'Check Password',
      name: 'passCheck',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Wait`
  String get wait {
    return Intl.message(
      'Wait',
      name: 'wait',
      desc: '',
      args: [],
    );
  }

  /// `Reserve Ticket`
  String get reserveTicket {
    return Intl.message(
      'Reserve Ticket',
      name: 'reserveTicket',
      desc: '',
      args: [],
    );
  }

  /// `Train Info`
  String get trainInfo {
    return Intl.message(
      'Train Info',
      name: 'trainInfo',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Count`
  String get ticketCount {
    return Intl.message(
      'Ticket Count',
      name: 'ticketCount',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Search`
  String get searchTicket {
    return Intl.message(
      'Ticket Search',
      name: 'searchTicket',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Travel From`
  String get travelFrom {
    return Intl.message(
      'Travel From',
      name: 'travelFrom',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Travel To`
  String get travelTo {
    return Intl.message(
      'Travel To',
      name: 'travelTo',
      desc: '',
      args: [],
    );
  }

  /// `Reservation Date`
  String get reservationDate {
    return Intl.message(
      'Reservation Date',
      name: 'reservationDate',
      desc: '',
      args: [],
    );
  }

  /// `Reserve`
  String get reserve {
    return Intl.message(
      'Reserve',
      name: 'reserve',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Class`
  String get travelClass {
    return Intl.message(
      'Ticket Class',
      name: 'travelClass',
      desc: '',
      args: [],
    );
  }

  /// `Reserve`
  String get reservation {
    return Intl.message(
      'Reserve',
      name: 'reservation',
      desc: '',
      args: [],
    );
  }

  /// `Your Ticket`
  String get yourTicket {
    return Intl.message(
      'Your Ticket',
      name: 'yourTicket',
      desc: '',
      args: [],
    );
  }

  /// `Passenger`
  String get passenger {
    return Intl.message(
      'Passenger',
      name: 'passenger',
      desc: '',
      args: [],
    );
  }

  /// `Passenger name`
  String get passengerName {
    return Intl.message(
      'Passenger name',
      name: 'passengerName',
      desc: '',
      args: [],
    );
  }

  /// `Traveling From`
  String get travelingFrom {
    return Intl.message(
      'Traveling From',
      name: 'travelingFrom',
      desc: '',
      args: [],
    );
  }

  /// `traveling To`
  String get travelingTo {
    return Intl.message(
      'traveling To',
      name: 'travelingTo',
      desc: '',
      args: [],
    );
  }

  /// `Travel`
  String get travel {
    return Intl.message(
      'Travel',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `Find Your Station`
  String get findYourStation {
    return Intl.message(
      'Find Your Station',
      name: 'findYourStation',
      desc: '',
      args: [],
    );
  }

  /// `Where Do You Want To Go?`
  String get whereDoYouWantToGo {
    return Intl.message(
      'Where Do You Want To Go?',
      name: 'whereDoYouWantToGo',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailAddress {
    return Intl.message(
      'Email',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confPassword',
      desc: '',
      args: [],
    );
  }

  /// `forgetPassword?`
  String get forgetPassword {
    return Intl.message(
      'forgetPassword?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `don't Have An Account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'don\'t Have An Account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get accountSettings {
    return Intl.message(
      'Account Settings',
      name: 'accountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Edit Account`
  String get editAccount {
    return Intl.message(
      'Edit Account',
      name: 'editAccount',
      desc: '',
      args: [],
    );
  }

  /// `open Notification`
  String get openNoti {
    return Intl.message(
      'open Notification',
      name: 'openNoti',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions And Complaints`
  String get suggestionsAndComplaints {
    return Intl.message(
      'Suggestions And Complaints',
      name: 'suggestionsAndComplaints',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get instructions {
    return Intl.message(
      'Instructions',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// `The traveler is the account holder`
  String get isPerson {
    return Intl.message(
      'The traveler is the account holder',
      name: 'isPerson',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get yourName {
    return Intl.message(
      'Full Name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `National Type`
  String get nationalType {
    return Intl.message(
      'National Type',
      name: 'nationalType',
      desc: '',
      args: [],
    );
  }

  /// `National Id`
  String get nationalId {
    return Intl.message(
      'National Id',
      name: 'nationalId',
      desc: '',
      args: [],
    );
  }

  /// `Payment Option`
  String get paymentOption {
    return Intl.message(
      'Payment Option',
      name: 'paymentOption',
      desc: '',
      args: [],
    );
  }

  /// `Change payment method`
  String get changePayment {
    return Intl.message(
      'Change payment method',
      name: 'changePayment',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Bill`
  String get bill {
    return Intl.message(
      'Bill',
      name: 'bill',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get service {
    return Intl.message(
      'Services',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Travel Info`
  String get travelInfo {
    return Intl.message(
      'Travel Info',
      name: 'travelInfo',
      desc: '',
      args: [],
    );
  }

  /// `The main passenger with the national number registered on the ticket must be present on the train \nTravel time, if you wish to refund your ticket, it will be through the ticket windows\n At the stations`
  String get travelInfoText {
    return Intl.message(
      'The main passenger with the national number registered on the ticket must be present on the train \nTravel time, if you wish to refund your ticket, it will be through the ticket windows\n At the stations',
      name: 'travelInfoText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Reservation`
  String get confirmReservation {
    return Intl.message(
      'Confirm Reservation',
      name: 'confirmReservation',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Hello,`
  String get hello {
    return Intl.message(
      'Hello,',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Once Again`
  String get onceAgain {
    return Intl.message(
      'Once Again',
      name: 'onceAgain',
      desc: '',
      args: [],
    );
  }

  /// `Register Your Account`
  String get registerYourAccount {
    return Intl.message(
      'Register Your Account',
      name: 'registerYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `With Us Now`
  String get withUsNow {
    return Intl.message(
      'With Us Now',
      name: 'withUsNow',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `National Id`
  String get nationalIdNumber {
    return Intl.message(
      'National Id',
      name: 'nationalIdNumber',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `I Already Have An Account`
  String get iAlreadyHaveAnAccount {
    return Intl.message(
      'I Already Have An Account',
      name: 'iAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `userName`
  String get userName {
    return Intl.message(
      'userName',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `The Electronic Ticket`
  String get electronicTicket {
    return Intl.message(
      'The Electronic Ticket',
      name: 'electronicTicket',
      desc: '',
      args: [],
    );
  }

  /// `Scan The Code`
  String get scanTheCode {
    return Intl.message(
      'Scan The Code',
      name: 'scanTheCode',
      desc: '',
      args: [],
    );
  }

  /// `Air conditioning - first class`
  String get airConditioningFirstClass {
    return Intl.message(
      'Air conditioning - first class',
      name: 'airConditioningFirstClass',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Number`
  String get ticketNumber {
    return Intl.message(
      'Ticket Number',
      name: 'ticketNumber',
      desc: '',
      args: [],
    );
  }

  /// `ID Number`
  String get iDNumber {
    return Intl.message(
      'ID Number',
      name: 'iDNumber',
      desc: '',
      args: [],
    );
  }

  /// `A seat`
  String get aSeat {
    return Intl.message(
      'A seat',
      name: 'aSeat',
      desc: '',
      args: [],
    );
  }

  /// `TrainNumber`
  String get trainNumber {
    return Intl.message(
      'TrainNumber',
      name: 'trainNumber',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Ticket`
  String get cancelTicket {
    return Intl.message(
      'Cancel Ticket',
      name: 'cancelTicket',
      desc: '',
      args: [],
    );
  }

  /// `Re-charge`
  String get recharge {
    return Intl.message(
      'Re-charge',
      name: 'recharge',
      desc: '',
      args: [],
    );
  }

  /// `Pay Method`
  String get payMethod {
    return Intl.message(
      'Pay Method',
      name: 'payMethod',
      desc: '',
      args: [],
    );
  }

  /// `Bank Cards`
  String get bankCards {
    return Intl.message(
      'Bank Cards',
      name: 'bankCards',
      desc: '',
      args: [],
    );
  }

  /// `Our Wallet`
  String get ourWallet {
    return Intl.message(
      'Our Wallet',
      name: 'ourWallet',
      desc: '',
      args: [],
    );
  }

  /// `Fawry Pay`
  String get fawryPay {
    return Intl.message(
      'Fawry Pay',
      name: 'fawryPay',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Security Updates`
  String get securityUpdates {
    return Intl.message(
      'Security Updates',
      name: 'securityUpdates',
      desc: '',
      args: [],
    );
  }

  /// `The Credit Card Is Connected`
  String get theCreditCardIsConnected {
    return Intl.message(
      'The Credit Card Is Connected',
      name: 'theCreditCardIsConnected',
      desc: '',
      args: [],
    );
  }

  /// `The Account Has Been Set Up Successfully!`
  String get theAccountHasBeenSetUpSuccessfully {
    return Intl.message(
      'The Account Has Been Set Up Successfully!',
      name: 'theAccountHasBeenSetUpSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Now EGR has two-factor authentication feature, try it,`
  String get egr {
    return Intl.message(
      'Now EGR has two-factor authentication feature, try it,',
      name: 'egr',
      desc: '',
      args: [],
    );
  }

  /// `now to make your account more secure.`
  String get egr2 {
    return Intl.message(
      'now to make your account more secure.',
      name: 'egr2',
      desc: '',
      args: [],
    );
  }

  /// `Your credit card has been successfully linked`
  String get creditCardSuccessfullyLinked {
    return Intl.message(
      'Your credit card has been successfully linked',
      name: 'creditCardSuccessfullyLinked',
      desc: '',
      args: [],
    );
  }

  /// `EGR, enjoy our services.`
  String get enjoyOurServices {
    return Intl.message(
      'EGR, enjoy our services.',
      name: 'enjoyOurServices',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been created successfully`
  String get accountCreatedSuccessfully {
    return Intl.message(
      'Your account has been created successfully',
      name: 'accountCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `You can now try our services.`
  String get nowTryOurServices {
    return Intl.message(
      'You can now try our services.',
      name: 'nowTryOurServices',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Charge Wallet`
  String get chargeWallet {
    return Intl.message(
      'Charge Wallet',
      name: 'chargeWallet',
      desc: '',
      args: [],
    );
  }

  /// `Charge .Details`
  String get chargeDetails {
    return Intl.message(
      'Charge .Details',
      name: 'chargeDetails',
      desc: '',
      args: [],
    );
  }

  /// `Choose Payment Type`
  String get choosePaymentType {
    return Intl.message(
      'Choose Payment Type',
      name: 'choosePaymentType',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get neww {
    return Intl.message(
      'New',
      name: 'neww',
      desc: '',
      args: [],
    );
  }

  /// `Write Your Suggestions`
  String get writeYourSuggestions {
    return Intl.message(
      'Write Your Suggestions',
      name: 'writeYourSuggestions',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Your Complaint has been sent`
  String get ComplaintSent {
    return Intl.message(
      'Your Complaint has been sent',
      name: 'ComplaintSent',
      desc: '',
      args: [],
    );
  }

  /// `Trip Duration`
  String get tripDuration {
    return Intl.message(
      'Trip Duration',
      name: 'tripDuration',
      desc: '',
      args: [],
    );
  }

  /// `Please fill data`
  String get fillData {
    return Intl.message(
      'Please fill data',
      name: 'fillData',
      desc: '',
      args: [],
    );
  }

  /// `Recharge your balance with the amount you want`
  String get rechargeBalanceAmount {
    return Intl.message(
      'Recharge your balance with the amount you want',
      name: 'rechargeBalanceAmount',
      desc: '',
      args: [],
    );
  }

  /// `Shipped via code`
  String get shippedViaCode {
    return Intl.message(
      'Shipped via code',
      name: 'shippedViaCode',
      desc: '',
      args: [],
    );
  }

  /// `A ticket has been purchased`
  String get ticketPurchased {
    return Intl.message(
      'A ticket has been purchased',
      name: 'ticketPurchased',
      desc: '',
      args: [],
    );
  }

  /// `I forgot`
  String get forgot {
    return Intl.message(
      'I forgot',
      name: 'forgot',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Code`
  String get enterCode {
    return Intl.message(
      'Enter The Code',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Charge Now`
  String get chargeNow {
    return Intl.message(
      'Charge Now',
      name: 'chargeNow',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Amount`
  String get enterAmount {
    return Intl.message(
      'Enter The Amount',
      name: 'enterAmount',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Credit`
  String get enterCredit {
    return Intl.message(
      'Enter The Credit',
      name: 'enterCredit',
      desc: '',
      args: [],
    );
  }

  /// `Add Credit Card`
  String get addCreditCard {
    return Intl.message(
      'Add Credit Card',
      name: 'addCreditCard',
      desc: '',
      args: [],
    );
  }

  /// `The minimum amount is 10 pounds`
  String get minimumAmountPounds {
    return Intl.message(
      'The minimum amount is 10 pounds',
      name: 'minimumAmountPounds',
      desc: '',
      args: [],
    );
  }

  /// `Enter Code`
  String get codeCheck {
    return Intl.message(
      'Enter Code',
      name: 'codeCheck',
      desc: '',
      args: [],
    );
  }

  /// `comsri`
  String get comsri {
    return Intl.message(
      'comsri',
      name: 'comsri',
      desc: '',
      args: [],
    );
  }

  /// `Code Check`
  String get codeCheckOnly {
    return Intl.message(
      'Code Check',
      name: 'codeCheckOnly',
      desc: '',
      args: [],
    );
  }

  /// `My Trips`
  String get myTrips {
    return Intl.message(
      'My Trips',
      name: 'myTrips',
      desc: '',
      args: [],
    );
  }

  /// `Post your ad here!`
  String get addYourAdd {
    return Intl.message(
      'Post your ad here!',
      name: 'addYourAdd',
      desc: '',
      args: [],
    );
  }

  /// `Start Time`
  String get startTime {
    return Intl.message(
      'Start Time',
      name: 'startTime',
      desc: '',
      args: [],
    );
  }

  /// `End Time`
  String get endTime {
    return Intl.message(
      'End Time',
      name: 'endTime',
      desc: '',
      args: [],
    );
  }

  /// `Ticktes Refund`
  String get refundText {
    return Intl.message(
      'Ticktes Refund',
      name: 'refundText',
      desc: '',
      args: [],
    );
  }

  /// `The possibility of refunding tickets at a later time, with a service of 5 pounds per ticket`
  String get refundInfo {
    return Intl.message(
      'The possibility of refunding tickets at a later time, with a service of 5 pounds per ticket',
      name: 'refundInfo',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get statue {
    return Intl.message(
      'Status',
      name: 'statue',
      desc: '',
      args: [],
    );
  }

  /// `Seat Number`
  String get seatNumber {
    return Intl.message(
      'Seat Number',
      name: 'seatNumber',
      desc: '',
      args: [],
    );
  }

  /// `New Registration`
  String get newRegistration {
    return Intl.message(
      'New Registration',
      name: 'newRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Student`
  String get student {
    return Intl.message(
      'Student',
      name: 'student',
      desc: '',
      args: [],
    );
  }

  /// `Parent`
  String get parent {
    return Intl.message(
      'Parent',
      name: 'parent',
      desc: '',
      args: [],
    );
  }

  /// `Do You Have Account?`
  String get doYouHaveAccount {
    return Intl.message(
      'Do You Have Account?',
      name: 'doYouHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you a student seeking to expand your horizons and open the doors of knowledge? A parent who would like to follow your son’s educational journey and support him in discovering his passion`
  String get areYou {
    return Intl.message(
      'Are you a student seeking to expand your horizons and open the doors of knowledge? A parent who would like to follow your son’s educational journey and support him in discovering his passion',
      name: 'areYou',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Your Type`
  String get selectUserType {
    return Intl.message(
      'Please Select Your Type',
      name: 'selectUserType',
      desc: '',
      args: [],
    );
  }

  /// `OR Login With`
  String get loginBy {
    return Intl.message(
      'OR Login With',
      name: 'loginBy',
      desc: '',
      args: [],
    );
  }

  /// `We are here to help you in your educational journey. Confidently fill out your contact information so we can guide you step by step`
  String get weAreHere {
    return Intl.message(
      'We are here to help you in your educational journey. Confidently fill out your contact information so we can guide you step by step',
      name: 'weAreHere',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Do you face any problems in studying`
  String get doYouFace {
    return Intl.message(
      'Do you face any problems in studying',
      name: 'doYouFace',
      desc: '',
      args: [],
    );
  }

  /// `Choose the level of study that suits you and you will be guaranteed the best educational options available`
  String get chooseYourLevel {
    return Intl.message(
      'Choose the level of study that suits you and you will be guaranteed the best educational options available',
      name: 'chooseYourLevel',
      desc: '',
      args: [],
    );
  }

  /// `Choose the study subjects that suit you and you will be guaranteed the best learning options available`
  String get chooseTheStudySubjects {
    return Intl.message(
      'Choose the study subjects that suit you and you will be guaranteed the best learning options available',
      name: 'chooseTheStudySubjects',
      desc: '',
      args: [],
    );
  }

  /// `Select the appropriate time period for you and we will organize the classes according to your schedule`
  String get selectTheTime {
    return Intl.message(
      'Select the appropriate time period for you and we will organize the classes according to your schedule',
      name: 'selectTheTime',
      desc: '',
      args: [],
    );
  }

  /// `Create the package that suits your needs and we will guarantee you the maximum benefit from every session`
  String get createYourPackage {
    return Intl.message(
      'Create the package that suits your needs and we will guarantee you the maximum benefit from every session',
      name: 'createYourPackage',
      desc: '',
      args: [],
    );
  }

  /// `Thank you, we are waiting for you to begin an inspiring and fruitful learning journey`
  String get thankYou {
    return Intl.message(
      'Thank you, we are waiting for you to begin an inspiring and fruitful learning journey',
      name: 'thankYou',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
