import "package:flutter/material.dart";
import "package:go_moon/Pages/widgets/custom_dropdown_button.dart";

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.08),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWiddet(),
                ],
              ),
              _astroImageWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "GO MOON ",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonClass(
      value: const [
        'pluto station',
        'tun mahathir station',
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: CustomDropDownButtonClass(
            value: const [
              '1',
              '2',
              '3',
              '4',
            ],
            width: _deviceWidth * 0.45,
          ),
        ),
        Flexible(
          child: CustomDropDownButtonClass(
            value: const [
              'Economy',
              'bissness',
              'VIP',
            ],
            width: _deviceWidth * 0.40,
          ),
        ),
      ],
    );
  }

  Widget _bookRideWiddet() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _destinationDropDownWidget(),
            _travellersInformationWidget(),
            _rideButtonWidget(),
          ]),
    );
  }

  Widget _rideButtonWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.020),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride !",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
