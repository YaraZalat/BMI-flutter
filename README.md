
# 🧮 BMI Calculator – Flutter App

A responsive Flutter mobile application that calculates Body Mass Index (BMI) based on user's height, weight, age, and gender. It is designed with clean architecture and a user-friendly UI.
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

| Screenshot 1 | Screenshot 2 |
|--------------|--------------|
| ![UI 1](https://github.com/YaraZalat/BMI-flutter/blob/master/assets/design/Screenshot%202025-07-10%20010407.png?raw=true) | ![UI 2](https://github.com/YaraZalat/BMI-flutter/blob/master/assets/design/Screenshot%202025-07-10%20010426.png?raw=true) |
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


-✅ Responsive Design:
Used Expanded, Flexible, and MediaQuery to make layout responsive across screen sizes.

-✅ Custom Widget Reusability:
Divided repeated components (e.g., GenderWidget, WeightAndAgeWidget) into reusable widgets to follow DRY principle.

-✅ Passing Arguments with Model:
Instead of using a raw Map, I created a dedicated model (ArgumentsOfCalculate) to pass data between screens using pushNamed. This improves type safety and code clarity.



---

## 🚀 Run the App

```bash
flutter pub get
flutter run
```
