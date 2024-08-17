# Riverpod State Management 🚀

This repository focuses on Riverpod state management, specifically through two different approaches: `ConsumerWidget` and `Consumer`. This is part of my **Advanced Flutter Challenge: 20 Steps to Enhance My Skills**.

## Screenshots

<img src = "https://github.com/user-attachments/assets/98cb35de-99cb-45b4-b88b-ba490edd630f" height = 400> &emsp; <img src = "https://github.com/user-attachments/assets/153af654-7cab-4d5f-910b-ebf0b1e13657"  height = 400>  &emsp; 

## **Part 1: Using `ConsumerWidget`**

In this part, we explore state management in Flutter using Riverpod with `ConsumerWidget`. This approach rebuilds the entire screen whenever there's a state change.

#### 🚀 Step-by-Step Breakdown:

1. **Setting Up the State Provider:**
   We define a `StateProvider` to manage the theme mode (light or dark). This state can be read and written by any widget with access to the `ref` (a Riverpod utility).

     ```dart
   final isLightTheme = StateProvider<bool>((ref) => true);

2. **Creating the `ConsumerWidget`:**
   We create a `ConsumerWidget` to build the UI. The `ConsumerWidget` listens to changes in the state and rebuilds the entire screen whenever the state changes (similar to `setState`).

     ```dart
     class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightThemeEnabled = ref.watch(isLightTheme);

    return MaterialApp(
      themeMode: isLightThemeEnabled ? ThemeMode.light : ThemeMode.dark,
      // other properties
    );
  }
}

4. **Using `ref.read(...)`:**
   - `read` accesses the current state of a provider without listening to its changes. It’s typically used in event handlers where you don’t need to rebuild the UI.
   - In this example, `read` is used to toggle the state of `isLightTheme` when the floating action button is pressed.

5. **Using `ref.watch(...)`:**
   - `watch` is used inside the build method to listen to changes in the state. When you watch a provider, it automatically rebuilds the widget when the state changes.

6. **Using `themeMode` in `MaterialApp`:**
   - Dynamically switch between light and dark themes based on the observed state.

## **Part 2: Using `Consumer`**

In this part, we explore another method using Riverpod: `Consumer`. This approach allows you to rebuild only specific parts of the UI, improving efficiency.

#### 🚀 Step-by-Step Breakdown:

1. **Defining the `ChangeNotifierProvider`:**
   We define a `ChangeNotifierProvider` to manage the theme state. This provider encapsulates the logic needed to toggle between light and dark modes.

2. **Creating the `ChangeNotifier` Class:**
   We create a `ChangeNotifier` class that handles the state and provides a method to toggle the theme. This class also notifies listeners whenever there’s a change.

3. **Building the UI with `Consumer`:**
   Instead of using `ConsumerWidget`, we utilize the `Consumer` widget directly within a `StatelessWidget`. This allows us to rebuild only the parts of the UI that need to update based on state changes. For instance, `Consumer` is used to wrap only the UI elements affected by the theme change.

4. **Using `ref.read(...)`:**
   - This method changes the theme without causing a full rebuild of the screen.

5. **Using `ref.watch(...)`:**
   - This ensures that only the UI elements wrapped by `Consumer` rebuild when the state changes.


## **Note:**
While `Consumer` is effective for updating specific sections of the UI, using `ConsumerWidget` is better suited for global changes like updating the theme. It ensures that the entire application reflects the new theme properly and consistently. I used `Consumer` here as an example to demonstrate its functionality, but it’s not the best approach for theme changes.


## Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/Mariam-Elkhelawy/Riverpod-StateManagement

2. Navigate to the project directory:

   ```bash
   cd Riverpod-StateManagement
   
3. Install dependencies:

   ```bash
   flutter pub get

4. Run the application:

   ```bash
   flutter run
