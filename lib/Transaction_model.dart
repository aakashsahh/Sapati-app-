class transactionlist {
  static final transaction_model = [
    Transactionmodel(
      logo: 'assets/images/mcdonalds.png',
      name: "Aakash Sah",
      date: '22.02.2020',
      amount: "2250",
    ),
    Transactionmodel(
      logo: 'assets/images/gas-station.png',
      name: "Santosh Sah",
      date: '22.02.2020',
      amount: '7545',
    ),
    Transactionmodel(
      logo: 'assets/images/mcdonalds.png',
      name: "Sudan Khanal",
      date: '22.02.2020',
      amount: '2250',
    ),
    Transactionmodel(
      logo: 'assets/images/gas-station.png',
      name: "Suraj Sah",
      date: '22.02.2020',
      amount: '7545',
    ),
    Transactionmodel(
      logo: 'assets/images/mcdonalds.png',
      name: "McDonald's",
      date: '22.02.2020',
      amount: "2250",
    ),
    Transactionmodel(
      logo: 'assets/images/gas-station.png',
      name: "Petrol",
      date: '22.02.2020',
      amount: '7545',
    ),
    Transactionmodel(
      logo: 'assets/images/mcdonalds.png',
      name: "McDonald's",
      date: '22.02.2020',
      amount: '22,50',
    ),
    Transactionmodel(
      logo: 'assets/images/gas-station.png',
      name: "Petrol",
      date: '22.02.2020',
      amount: '75,45',
    ),
    Transactionmodel(
      logo: 'assets/images/gas-station.png',
      name: "Santosh Sah",
      date: '22.02.2020',
      amount: '7545',
    ),
    Transactionmodel(
      logo: 'assets/images/mcdonalds.png',
      name: "Sudan Khanal",
      date: '22.02.2020',
      amount: '22,50',
    ),
  ];
}

class Transactionmodel {
  final String logo;
  final String name;
  final String date;
  final String amount;

  Transactionmodel(
      {required this.logo,
      required this.name,
      required this.date,
      required this.amount});
}
