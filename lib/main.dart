import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictok_clone/constants/sizes.dart';
import 'package:tictok_clone/features/authentication/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark,
  );

  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        textTheme: GoogleFonts.nanumGothicTextTheme(
          ThemeData(brightness: Brightness.dark).textTheme,
        ),
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFE9435A),
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        // bottomAppBarTheme: BottomAppBarTheme(
        //   color: Colors.grey.shade50,
        // ),
        textTheme: GoogleFonts.nanumGothicTextTheme(),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
        ),
        primaryColor: const Color(0xFFE9435A),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: const SignUpScreen(),
    );
  }
}

// class LayoutBuilderCodeLab extends StatelessWidget {
//   const LayoutBuilderCodeLab({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SizedBox(
//         width: size.width / 2,
//         child: LayoutBuilder(
//           builder: (context, BoxConstraints constraints) => Container(
//             width: constraints.maxWidth,
//             height: constraints.maxHeight,
//             color: Colors.teal,
//             child: Center(
//               child: Text(
//                 "${size.width} / ${constraints.maxWidth}",
//                 style: const TextStyle(color: Colors.white, fontSize: 98),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
