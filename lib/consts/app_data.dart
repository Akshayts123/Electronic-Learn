import 'dart:ui';

import '../models/items.dart';

class AppData {
   AppData._();

  static List<Items> items = [
    Items(
        images: "jjp.jpg",
        vedio: "20 Vedios",
        about: "Web App with React and Firebase Introduction",
        name: "jonathan",
        price: "\$30.00"),
    Items(
        images: "jjp1.jpg",
        vedio: "10 Vedios",
        about: "Web App with React and Firebase Introduction",
        name: "Akshay",
        price: "\$40.00"),
    Items(
        images: "jjp2.jpg",
        vedio: "40 Vedios",
        about: "Web App with React and Firebase Introduction",
        name: "Aswin",
        price: "\$50.00"),
    Items(
        images: "jjp3.jpg",
        vedio: "20 Vedios",
        about: "Web App with React and Firebase Introduction",
        name: "Jithin",
        price: "\$60.00"),
    Items(
        images: "jjp4.jpg",
        vedio: "50 Vedios",
        about: "Web App with React and Firebase Introduction",
        name: "Ravi Shankar",
        price: "\$70.00"),
  ];
  static List<Instructor> instructor = [
    Instructor(videoAmount: '30', percentage: 20),
    Instructor(videoAmount: '40', percentage: 40),
    Instructor(videoAmount: '50', percentage: 50),
    Instructor(videoAmount: '60', percentage: 10),
    Instructor(videoAmount: '70', percentage: 70),
  ];
  static List<Title> title = [
    Title(title: 'Code'),
    Title(title: 'Finance & Accounting'),
    Title(title: 'Design'),
    Title(title: 'Development'),
    Title(title: 'Business'),
    Title(title: 'IT & Software'),
    Title(title: 'Photography & Video'),
    Title(title: 'Marketing'),
    Title(title: 'Lifestyle'),
    Title(title: 'Office Productivity'),
    Title(title: 'Music'),
    Title(title: 'Personal Development'),
  ];
  static List<Title2> title2 = [
    Title2(title: 'Photography & Video'),
    Title2(title: 'Marketing'),
    Title2(title: 'Lifestyle'),
    Title2(title: 'Office Productivity'),
    Title2(title: 'Music'),
    Title2(title: 'Personal Development'),
  ];
  static List<Account> account = [
    Account(title: "Your downloaded course", isswitch: false),
    Account(title: "Video dowload quality", isswitch: false),
    Account(title: "Download over Wi-Fi only", isswitch: true),
  ];
  static List<Settings> settings = [
    Settings(title: "Payment Methods"),
    Settings(title: "Change Password"),
    Settings(title: "Push Notifications"),
    Settings(title: "Deactivate Account"),
  ];
  static List<Support> support = [
    Support(title: "About Us"),
    Support(title: "Help and Support"),
    Support(title: "Terms and Conditions"),
    Support(title: "Privacy Policy"),
  ];
  static List<SmallBanner> smallbanner = [
    SmallBanner(
      image: "vect1.jpg",
      texts1: 'Course materials',
      texts2: 'Learning',
      rate: "2.0",
    ),
    SmallBanner(
      image: "vect2.jpg",
      texts1: 'Assessments',
      texts2: 'Learning',
      rate: "3.0",
    ),
    SmallBanner(
      image: "vect3.jpg",
      texts1: 'Communication tools',
      texts2: 'Learning',
      rate: "4.0",
    ),
    SmallBanner(
      image: "vect4.jpg",
      texts1: 'Progress tracking',
      texts2: 'Learning',
      rate: '5.0',
    ),
    SmallBanner(
      image: "vect5.jpg",
      texts1: 'Administration tools',
      texts2: 'Learning',
      rate: "1.0",
    ),
  ];
  static List<Lucturer> lucturer = [
    Lucturer(texts1: "Dr.Ravindranadth", texts2: "lucturer", texts3: "14 october 2023", texts4: "1:00-4:00pm"),
    Lucturer(texts1: "Dr.Rajive", texts2: "lucturer", texts3: "14 august 2023", texts4: "12:00-4:00pm"),
    Lucturer(texts1: "Dr.Shibin", texts2: "lucturer", texts3: "15 november 2023", texts4: "11:00-6:00pm"),
    Lucturer(texts1: "Dr.Sandra", texts2: "lucturer", texts3: "17 october 2023", texts4: "5:00-12:00pm"),
    Lucturer(texts1: "Dr.Cybil", texts2: "lucturer", texts3: "19 december 2023", texts4: "3:00-4:00pm"),
  ];
  List<Color> coloring = [
    Color(0xFFE2F1FA),
    Color(0xFFFDE1E6),
    Color(0xFFD5D5E0),
    Color(0xFFE2F1FA),
    Color(0xFFD5D5E0),
  ];
}
