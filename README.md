# Slash App - Responsive Home Screen

## Overview

### This project implements a responsive Home Screen for the Slash App that adapts seamlessly to both mobile and web platforms. The implementation follows clean architecture principles and uses the MVVM pattern with Bloc for state management.

## Requirements

### Flutter SDK

### A code editor (e.g., VSCode or Android Studio)

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/slash-app-home-screen.git
cd slash-app-home-screen
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Run the App
- **Mobile**
```bash
flutter run
```
- **Web**
```bash
flutter run -d chrome
```

## Project Structure

```
lib/
├── data/
│   ├── data_source/
│   ├── models/
│   ├── repos/
├── domain/
│   ├── entities/
│   ├── repos/
│   ├── use_cases/
├── presentation/
│   ├── manager/
│       ├── cubit/
│   ├── views/
│       ├── home/
```
