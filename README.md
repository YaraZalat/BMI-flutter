
# 🧮 BMI Calculator – Flutter App

A simple, elegant, and responsive mobile application built using **Flutter** to calculate the Body Mass Index (BMI) based on user input: gender, height, weight, and age.

---

## 📝 1. General Overview

This app allows users to:
- Select their gender
- Adjust height using a slider
- Increase or decrease weight and age using buttons
- Calculate and display their BMI result with a single tap

It’s designed with a **responsive layout**, making it adaptable to various screen sizes, and follows a **clean architecture** pattern using folders like `model`, `screens`, and `widgets`.

---

## 🖥️ 2. Screens Overview

### 🏠 Home Screen (`HomeScreen`)
- The main screen where users input their details.
- Contains gender selection, height slider, and weight/age controls.
- A "Calculate" button navigates to the result screen with the BMI result.

### 📊 Result Screen (`ResultScreen`)
- Displays the calculated BMI value.
- Offers basic feedback (underweight, normal, overweight, etc.).
- The data is passed from `HomeScreen` using `Navigator` and an `Arguments` model.

---

## 🎯 3. Project Architecture (Design Pattern)

The app uses a **separation of concerns** pattern with 3 main layers:

| Folder     | Purpose                                             |
|------------|-----------------------------------------------------|
| `model`    | Contains data classes like `ArgumentsOfCalculate`  |
| `screens`  | Main UI pages such as `HomeScreen` and `ResultScreen` |
| `widgets`  | Reusable components like `GenderWidget`, `HeightWidget`, `WeightAndAgeWidget`, `BottomNavigationBar` |

This structure improves maintainability and scalability.

---

## 🎨 4. UI Design

The user interface is designed using 🔗 [View Figma Design](https://www.figma.com/file/your-design-link)

![BMI App UI](https://www.figma.com/design/68fRWL8RmecaUjl5dWQwPm/Untitled?node-id=18-18&t=LggZgBg5ii7uZpQI-4)
---

## 📦 5. Dependencies

Below are the dependencies used in this project. Add them directly to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
```

> You can add any additional dependencies you plan to use later (like `provider`, `flutter_bloc`, or `google_fonts`) here as well.

---

## 📁 Folder Structure

```
lib/
│
├── model/
│   └── argumentsOfCalculate.dart
│
├── screens/
│   ├── homeScreen.dart
│   └── resultScreen.dart
│
├── widgets/
│   ├── genderWidget.dart
│   ├── heightWidget.dart
│   ├── weightAndAgeWidget.dart
│   ├── buttomNavigationBar.dart
│   └── appBarWidget.dart
│
└── main.dart
```

---

## ✅ Features

- Easy-to-use interface
- Responsive design
- Separation of logic & UI
- Smooth screen transitions
- Reusable components

---

## 🚧 Challenges Faced

- **HeroTag Conflict**: Initially, using the same `heroTag` for multiple `FloatingActionButtons` caused runtime errors. Resolved by assigning unique tags.
- **Initial IDE setup**: Android Studio didn’t detect SDK at first; fixed via manual SDK path configuration.
- **Auto-complete not working**: IntelliSense didn't activate until restarting IDE or pressing `Ctrl + P`.

---

## 🚀 Run the App

```bash
flutter pub get
flutter run
```
