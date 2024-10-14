import 'package:flutter/cupertino.dart';
export 'package:flutter/cupertino.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});
  @override
  _Converter createState() => _Converter();
}

class _Converter extends State {
  double answer = 0;
  String errorMessage = "Try Again";
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 200, 218, 238),
        middle: Text("Converter"),
      ),
      backgroundColor: const Color.fromARGB(255, 200, 218, 238),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            errorMessage.isEmpty
                ? "NGN ${answer.toStringAsFixed(2)}"
                : errorMessage,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.inactiveGray,
            ),
          ),
          const SizedBox(height: 7),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: CupertinoTextField(
                controller: textEditingController,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                textAlign: TextAlign.center,
                placeholder: "Please Enter Amount in USD",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: CupertinoButton(
              onPressed: () {
                if (textEditingController.text.isNotEmpty) {
                  answer = double.parse(textEditingController.text) * 1600;
                  errorMessage = "";
                  setState(() {});
                } else {
                  errorMessage = "Try Again";
                }
              },
              color: CupertinoColors.black,
              child: const Text("Convert"),
            ),
          ),
        ],
      )),
    );
    // TODO: implement build
  }
}
