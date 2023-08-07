import "package:flutter/material.dart";

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
          child: _destinationDropDownWidget(),
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
    List<DropdownMenuItem<String>> _items = [
      'pluto station',
      'tun mahathir station',
    ].map(
      (e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      },
    ).toList();
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items,
      ),
    );
  }
}
