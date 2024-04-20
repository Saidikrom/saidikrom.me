import 'package:flutter/material.dart';
import 'package:saidikromme/core/constants/color_const.dart';
import 'package:saidikromme/core/constants/padding_const.dart';
import 'package:saidikromme/core/constants/radius_const.dart';
import 'package:saidikromme/home/developed_projects_bento.dart';
import 'package:saidikromme/home/github_contributions.dart';
import 'package:saidikromme/home/last_experience.dart';
import 'package:saidikromme/home/moony_bento.dart';
import 'package:saidikromme/home/optimedia_bento.dart';
import 'package:saidikromme/home/programming_language.dart';
import 'package:saidikromme/widgets/bento.dart';
import 'navbar/navbar.dart';
import 'navbar/pinned_navbar.dart';
import 'say_hello.dart';
import 'soff_bento.dart';
import 'telegram_channel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorConst.backgroundColor,
      body: const Stack(
        alignment: Alignment.topCenter,
        children: [
          HomePage(),
          PinnedNavbar(),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<DateTime, int> date = {
    DateTime(2024, 1, 10): 2,
    DateTime(2024, 2, 2): 9,
    DateTime(2024, 2, 5): 2,
    DateTime(2024, 2, 7): 1,
    DateTime(2024, 2, 9): 3,
    DateTime(2024, 2, 10): 1,
    DateTime(2024, 2, 14): 2,
    DateTime(2024, 3, 5): 4,
    DateTime(2024, 3, 6): 10,
    DateTime(2024, 3, 7): 2,
    DateTime(2024, 3, 8): 1,
    DateTime(2024, 3, 13): 1,
    DateTime(2024, 3, 17): 2,
    DateTime(2024, 3, 28): 4,
    DateTime(2024, 3, 29): 2,
    DateTime(2024, 3, 30): 2,
    DateTime(2024, 4, 1): 1,
    DateTime(2024, 4, 2): 2,
    DateTime(2024, 4, 3): 2,
    DateTime(2024, 4, 4): 1,
    DateTime(2024, 4, 5): 1,
    DateTime(2024, 4, 6): 1,
    DateTime(2024, 4, 9): 2,
    DateTime(2024, 4, 11): 1,
    DateTime(2024, 4, 13): 2,
    DateTime(2024, 4, 14): 2,
    DateTime(2024, 4, 16): 1,
    DateTime(2024, 4, 20): 1,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navbar(),
            Padding(
              padding: PaddingConst().padding80All,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: PaddingConst().padding8All,
                            child: Container(
                              height: 695,
                              width: 750,
                              decoration: BoxDecoration(
                                color: ColorConst.elevation0Color,
                                // image: const DecorationImage(
                                // image: NetworkImage(
                                //     "https://images.unsplash.com/photo-1557682260-96773eb01377?q=80&w=2029&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                // fit: BoxFit.cover,
                                // opacity: 0.6),
                                borderRadius:
                                    BorderRadius.circular(RadiusConst.r64),
                                border: Border.all(
                                  color: ColorConst.borderColor,
                                ),
                              ),
                              child: Image.asset("assets/images/myself.png"),
                            ),
                          ),
                          const Bento(
                            widget: DevelopedProjectsBento(),
                            height: 328,
                            width: 750,
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Bento(
                              widget: LastExperience(),
                              height: 298,
                              width: 752),
                          Row(
                            children: [
                              Bento(
                                  widget: MoonyBento(),
                                  height: 725,
                                  width: 373),
                              Column(
                                children: [
                                  Bento(
                                      widget: TelegramChannel(width: 368),
                                      height: 352,
                                      width: 368),
                                  Bento(
                                      widget: SizedBox(),
                                      height: 352,
                                      width: 368),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Bento(widget: SizedBox(), height: 750, width: 752),
                      Column(
                        children: [
                          Bento(
                              widget: OptimediaBento(),
                              height: 367,
                              width: 752),
                          Row(
                            children: [
                              Bento(
                                  widget: SOFFBento(), height: 368, width: 368),
                              Bento(
                                  widget: SayHello(), height: 368, width: 368),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Bento(widget: SizedBox(), height: 397, width: 494),
                  //     Bento(widget: SizedBox(), height: 397, width: 494),
                  //     Bento(widget: SizedBox(), height: 397, width: 494),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Bento(
                          widget: ProgrammingLanguages(),
                          height: 397,
                          width: 749),
                      Bento(
                          widget: GithubContributions(date: date),
                          height: 397,
                          width: 749),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
