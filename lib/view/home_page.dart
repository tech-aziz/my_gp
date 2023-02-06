import 'package:flutter/material.dart';

import 'custom_payment_circle_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6EDF3),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _accountBalance(),
            const SizedBox(
              height: 6,
            ),
            _rechargeNow(),
            const SizedBox(
              height: 6,
            ),
            _cashbackOffer(),
          ],
        ),
      ),
    );
  }

  // AppBar Function Start
  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 76,
      leading: Padding(
        padding: const EdgeInsets.only(top: 18, bottom: 18, right: 5, left: 10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(100)),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png'),
          ),
        ),
      ),
      titleSpacing: 2,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Azizul Hakim',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
          Row(
            children: const [
              Text(
                '01789398972',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
              SizedBox(
                width: 3,
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.white,
                size: 15,
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 20,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 20,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline_rounded,
              size: 20,
              color: Colors.white,
            ))
      ],
    );
  }

  // AppBar Function End

  //Account Balance Function Start
  Widget _accountBalance() {
    return Container(
      color: Colors.white,
      height: 190,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Amount Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.black54)),
                  const SizedBox(
                    height: 6,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 58,
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Colors.red,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.redAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('৳21.61',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                            Text('Available',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Details',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.blue)),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.blue,
                        size: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.add_circle,
                        color: Colors.black45,
                        size: 17,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('1.5 GB'),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black12,
                    endIndent: 15,
                    indent: 25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        color: Colors.black45,
                        size: 17,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('0 Min'),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black12,
                    endIndent: 15,
                    indent: 25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.black45,
                        size: 17,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('0 SMS'),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  //Account Balance Function End

  //Recharge Now Function Start
  Widget _rechargeNow() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 60,
      child: Container(
        margin: const EdgeInsets.only(left: 12),
        child: Row(
          children: [
            SizedBox(
              width: 200,
              height: 40,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffE6EDF3),
                      child: Image.network(
                        "https://logos-download.com/wp-content/uploads/2022/01/BKash_Logo_icon-700x662.png",
                        width: 20,
                        height: 20,
                      ), // Provide your custom image
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffE6EDF3),
                      child: Image.network(
                          "https://download.logo.wine/logo/Nagad/Nagad-Logo.wine.png",
                          width: 35,
                          height: 35), // Provide your custom image
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffE6EDF3),
                      child: Image.network(
                          "https://cdn.freebiesupply.com/logos/large/2x/visa-logo-png-transparent.png",
                          width: 30,
                          height: 30), // Provide your custom image
                    ),
                  ),
                  Positioned(
                    left: 90,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffE6EDF3),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/800px-MasterCard_Logo.svg.png",
                          width: 30,
                          height: 30), // Provide your custom image
                    ),
                  ),
                  Positioned(
                    left: 120,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffE6EDF3),
                      child: Text(
                        '+2',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ), // Provide your custom image
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Recharge Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }

  //Recharge Now Function End

  //CashBack Offer function start
  Widget _cashbackOffer() {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cashback Offer!',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customWidget(
                      Image.network(
                        'https://cdn01.grameenphone.com/sites/default/files/GP_Offer_cash_back_on_20tk_by_Recharge_tk_21_Mobile_image.jpg',
                        fit: BoxFit.fill,
                      ),
                      const Text('Click to Recharge now!',
                          style: TextStyle(color: Colors.blue, fontSize: 15))),
                  const SizedBox(
                    width: 12,
                  ),
                  customWidget(
                      Image.network(
                        'https://cdn01.grameenphone.com/sites/default/files/offfers-images/GP_Offer_3_hours_unlimited_internet_Pack_tile_Image.jpg',
                        fit: BoxFit.fill,
                      ),
                      const Text('Click to Recharge now!',
                          style: TextStyle(color: Colors.blue, fontSize: 15))),
                  const SizedBox(
                    width: 12,
                  ),
                  customWidget(
                      Image.network(
                        'https://i-techbd.com/wp-content/uploads/2020/10/gp-5gb-free.jpg',
                        fit: BoxFit.fill,
                      ),
                      const Text('Click to Recharge now!',
                          style: TextStyle(color: Colors.blue, fontSize: 15))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//CashBack Offer function end

  Widget customWidget(Image image, Text text) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 3,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.height * .3,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .14,
              width: MediaQuery.of(context).size.height * .3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(18)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(18), child: image),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  text,
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.blue,
                    size: 12,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
