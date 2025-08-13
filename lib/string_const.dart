import 'package:flutter/material.dart';

final List<Map<String, dynamic>> sectionList = [
  {'icon': 'assets/images/profile_icon.png', 'title': 'My Accounts'},
  {'icon': 'assets/images/send_money.png', 'title': 'Send Money'},
  {'icon': 'assets/images/payment.png', 'title': 'Payments'},
  {'icon': 'assets/images/topup.png', 'title': 'Mobile Topup'},
];

final List<Map<String, dynamic>> accountList = [
  {'icon': 'assets/images/cash_deposit.png', 'title': 'Cash Deposit'},
  {'icon': 'assets/images/loan_against.png', 'title': 'Loan Against FD'},
  {'icon': 'assets/images/enhancement.png', 'title': 'FD Loan Enhancement'},
  {'icon': 'assets/images/loan.png', 'title': 'FD Loan Settlement'},
];

final List<Map<String, dynamic>> bankingList = [
  {'icon': 'assets/images/fd_request.png', 'title': 'FD Request'},
  {'icon': 'assets/images/fd_plugin.png', 'title': 'FD Plugin'},
  {'icon': 'assets/images/recurring.png', 'title': 'Recurring'},
  {'icon': 'assets/images/ecom_card.png', 'title': 'Ecom Card'},
];

final List<Map<String, dynamic>> digitalServicesList = [
  {
    'icon': Icons.account_box_sharp,
    'title': 'Open Account',
    'color': Colors.green,
  },
  {
    'icon': Icons.insert_drive_file_outlined,
    'title': 'Open Demat',
    'color': const Color.fromARGB(255, 170, 89, 89),
  },
  {
    'icon': Icons.show_chart,
    'title': 'Start SIP',
    'color': Colors.lightBlueAccent,
  },
];

final List<Map<String, dynamic>> accountServicesList = [
  {
    'icon': Icons.account_balance_wallet,
    'title': 'Cheque \nDeposit\n',
    'color': Colors.blue,
  },
  {
    'icon': Icons.request_page,
    'title': 'Cash \nWithdrawal\nby Cheque',
    'color': Colors.green,
  },
];

final List<Map<String, dynamic>> otherServicesList = [
  {
    'icon': Icons.insert_drive_file_outlined,
    'title': 'Open Demat',
    'color': const Color.fromARGB(255, 200, 100, 100),
  },
  {
    'icon': Icons.account_box_sharp,
    'title': 'Open Account',
    'color': const Color.fromARGB(255, 200, 85, 206),
  },
  {
    'icon': Icons.show_chart,
    'title': 'Start SIP',
    'color': const Color.fromARGB(255, 135, 155, 53),
  },
  {'icon': Icons.request_page, 'title': 'Withdrawal', 'color': Colors.green},
];
