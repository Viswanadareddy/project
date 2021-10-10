import 'package:flutter/material.dart';
import 'package:project/onbording/data.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int totalpages = OnboardingItems.loadOnboardingItem().length;
    return Scaffold(
      body: PageView.builder(
          itemCount: OnboardingItems.loadOnboardingItem().length,
          itemBuilder: (BuildContext context, int index) {
            OnboardingItem oi = OnboardingItems.loadOnboardingItem()[index];
            return (Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: oi.color,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        child: Text('SKIP',
                            style: Theme.of(context).textTheme.headline5),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.asset(oi.image),
                  ),
                  Column(
                    children: [
                      Text(
                        oi.title,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        oi.subtitles,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      index == totalpages - 1
                          ? MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'login');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get Started',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Colors.white)
                                ],
                              ),
                            )
                          : Container()
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: totalpages,
                        itemBuilder: (BuildContext context, int i) {
                          return Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Container(
                              width: index == i ? 100 : 30,
                              color:
                                  index == i ? Colors.white70 : Colors.white12,
                            ),
                          );
                        }),
                  )
                ],
              ),
            ));
          }),
    );
  }
}
