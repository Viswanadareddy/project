import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/Constants/constants.dart';
import 'package:project/pages/login.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return _onboardimage(context, splashData[index]['image']!,
                      splashData[index]['text']!);
                },
                controller: _controller,
                onPageChanged: (int newindex) {
                  setState(() {
                    currentIndex = newindex;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    splashData.length,
                    (index) => _pageindicators(
                      context,
                      index == currentIndex ? 100 : 40,
                      index == currentIndex
                          ? Constants.ksecondarycolor
                          : Constants.kprimarycolor.withOpacity(0.6),
                    ),
                  ),
                ),
                TextButton(
                  child: Text(
                    currentIndex != splashData.length - 1 ? 'NEXT' : "DONE",
                    style: TextStyle(
                      fontSize: 16,
                      color: Constants.kprimarycolor,
                    ),
                  ),
                  onPressed: () {
                    currentIndex != splashData.length - 1
                        ? _controller.nextPage(
                            duration: Duration(microseconds: 250),
                            curve: Curves.easeInOutBack,
                          )
                        : Navigator.pushNamed(context, 'login');
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

Widget _onboardimage(BuildContext context, String image, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 350,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 20),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ],
  );
}

Widget _pageindicators(BuildContext context, double width, Color color) {
  return AnimatedContainer(
    margin: const EdgeInsets.fromLTRB(0, 8, 6, 8),
    duration: Duration(microseconds: 250),
    width: width,
    height: 5,
    decoration: BoxDecoration(
      color: color,
    ),
  );
}

List<Map<String, String>> splashData = [
  {
    "text": "Are you a foodie?",
    "image": "assets/1.jpg",
  },
  {"text": "Food Delivery at a snap", "image": "assets/2.jpg"},
  {"text": "Never stop your cravings", "image": "assets/3.jpg"},
];
