

## Installation

To run MovieOsirisApp locally, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/cuongtp1408/MovieOsirisApp
```

2. Change to the project directory:
```bash
cd Osiris
```
3. Install the dependencies:
```bash
flutter pub get
```
4. Set up Firebase:

- Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
- Add an Android and/or iOS app to your project and follow the setup instructions to obtain the necessary configuration files (google-services.json and/or GoogleService-Info.plist).
- Enable Firebase Authentication and Firestore in your Firebase project.

5. Configure TMDb API:
- Sign up for a free account at The Movie Database and obtain an API key.
- Replace your API key to the lib/Services/API.dart file:
```dart
String apiKey = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
```

6. Run the app:
```bash
flutter run
```

## Technologies Used

- Flutter: A cross-platform UI toolkit for building beautiful, natively compiled applications.
- Firebase: A comprehensive suite of cloud-based tools for building and managing apps.
- The Movie Database (TMDb) API: A rich movie and TV show database with detailed information and media content.

