import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unit4_assignment_duhina/components/mini_card.dart';
import 'package:unit4_assignment_duhina/components/personal_data.dart';
import 'package:unit4_assignment_duhina/components/section.dart';
import 'package:unit4_assignment_duhina/utils/theme.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'components/DiamondClip.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Section(
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Positioned(
                    right: 0,
                    left: 400,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 64),
                      height: 240,
                      color: getTheme().colorScheme.secondary,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('<h1 data-msg="Hi, I am"',
                                  style: TextStyle(color: getTextColor())),
                              Text(
                                "Rei Ebenezer Duhina",
                                style: getTheme().textTheme.titleLarge,
                              ),
                              Text('</h1>', style: TextStyle(color: getTextColor()))
                            ],
                          ),
                          Text(
                              'I love making websites. And I make them quickly, too!',
                              style: TextStyle(color: getTextColor()))
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-25, 0),
                    child: ClipPath(
                      clipper: DiamondClip(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: getTheme().colorScheme.primary,
                        ),
                        width: 480,
                        height: 480,
                        child: Transform.scale(
                          scale: 1.3,
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'lib/assets/profile.png',
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Section(
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              width: double.infinity,
              height: 720,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: Text('About Me',
                        style: getTheme().textTheme.titleMedium),
                  ),
                  const Positioned.fill(
                    left: 150,
                    child: SvgPicture(
                      AssetBytesLoader('lib/assets/line.vec'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-300, 150),
                    child: const MiniCard(
                      img: 'lib/assets/fd_logo.png',
                      heading: 'Digital Development Editor for Technology',
                      description: 'Academic Year 2024-2025',
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(230, 500),
                    child: const MiniCard(
                        img: 'lib/assets/cyb_logo.png',
                        heading: 'Vice President (Research and Development)',
                        description: 'Academic Year 2024-2025',
                        reverse: true),
                  ),
                  Positioned(
                    bottom: 32,
                    left: 128,
                    child: Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 30),
                            blurRadius: 32,
                            color: Color.fromARGB(102, 00, 00, 00))
                      ]),
                      child: Card(
                          color: getTheme().colorScheme.secondary,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Personal Details',
                                      style: getTheme().textTheme.titleSmall),
                                  const SizedBox(height: 24),
                                  const PersonalData()
                                ]),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Section(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('My Biography',
                    style: getTheme().textTheme.titleMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: 32),
                const Text(
                    'Coming from the humble and simple town of Barbaza, Antique, Rei Ebenezer is a third-year student at West Visayas State University (WVSU) - Main Campus, taking up Bachelor of Science in Computer Science, Major in Artificial Intelligence. '),
                const SizedBox(height: 14),
                const Text(
                    'Rei Ebenezer is currently the Digital Development Editor for Technology at Forum-Dimensions, the official university student publication of WVSU. He is also the lead developer of the publication’s official website. Moreover, he also holds the vice presidential spot for Research and Development at Cyb Robotics Organization for the Academic Year 2024-2025. '),
                const SizedBox(height: 14),
                const Text(
                    'His passion lies in the field of web development and design, particularly in the following aspects:'),
                const SizedBox(height: 8),
                const Text(
                    '\u2022 User Interface/User Experience (UI/UX) Design'),
                const Text('\u2022 Frontend Development'),
                const Text('\u2022 Backend Development'),
                const Text('\u2022 Database Management'),
                const Text('\u2022 Project Management'),
                const SizedBox(height: 14),
                const Text(
                    '(If you’re wondering, that’s all of them except documentation)'),
                const SizedBox(height: 14),
                const Text('I can also do the following: '),
                const SizedBox(height: 8),
                const Text('\u2022 Photo Editing and Composition'),
                const Text(
                    '\u2022 Layout and Design for Publication Materials'),
                const Text('\u2022 Software Development'),
                const Text('\u2022 Robotics'),
                const Text('\u2022 Technical and Formal Writing'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
