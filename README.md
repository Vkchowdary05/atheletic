# 🏃‍♂️ Sports Skill App

A modern Flutter application for exploring and learning sports skills, organized by difficulty level with smooth animations and clean UI design.

![Flutter](https://img.shields.io/badge/Flutter-3.0%2B-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0%2B-0175C2?logo=dart)
![License](https://img.shields.io/badge/license-MIT-green)

## ✨ Features

- 📚 **Skill Categories**: Skills organized into Basic, Intermediate, and Advanced levels
- 🎨 **Modern UI**: Clean, smooth interface with beautiful animations
- 🔄 **BLoC Architecture**: Robust state management using flutter_bloc
- 📱 **Responsive Design**: Works seamlessly on all screen sizes
- 🎭 **Smooth Animations**: Staggered fade-in effects and interactive card animations
- 🖼️ **Image Loading**: Graceful image loading with progress indicators
- ⚡ **Performance**: Optimized scrolling with bounce physics

## 📸 Screenshots

*Add your app screenshots here*

## 🏗️ Project Structure

```
sports_skill_app/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── models/
│   │   └── skill_model.dart         # Skill data model
│   ├── bloc/
│   │   ├── skill_bloc.dart          # Business logic component
│   │   ├── skill_event.dart         # Event definitions
│   │   └── skill_state.dart         # State definitions
│   ├── repository/
│   │   └── skill_repository.dart    # Data layer
│   └── ui/
│       ├── home_page.dart           # Main screen
│       └── skill_card.dart          # Skill card widget
├── assets/
│   └── skills.json                  # Skills data
├── pubspec.yaml                     # Dependencies
└── README.md                        # Documentation
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- An emulator or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/sports-skill-app.git
   cd sports-skill-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3      # State management
  equatable: ^2.0.5         # Value equality
```

## 🎯 Core Concepts

### BLoC Pattern

The app uses the BLoC (Business Logic Component) pattern for state management:

- **Events**: User actions that trigger state changes
- **States**: Representations of the UI state (loading, loaded, error)
- **BLoC**: Processes events and emits new states

### Data Flow

```
UI Event → Skill Bloc → Repository → JSON Asset
                ↓
           New State
                ↓
          UI Updates
```

## 📝 Adding New Skills

Edit `assets/skills.json`:

```json
{
  "name": "Your Skill Name",
  "level": "Basic|Intermediate|Advanced",
  "image": "https://your-image-url.com/image.jpg"
}
```

## 🎨 Customization

### Colors

Modify colors in `lib/main.dart` and `lib/ui/home_page.dart`:

```dart
// Primary color
const Color(0xFF6C63FF)

// Skill level colors
Basic: Color(0xFF4CAF50)
Intermediate: Color(0xFFFF9800)
Advanced: Color(0xFFF44336)
```

### Animations

Adjust animation timings in `lib/ui/home_page.dart`:

```dart
duration: const Duration(milliseconds: 800)
```

## 🧪 Testing

Run tests:
```bash
flutter test
```

## 📱 Building for Production

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🐛 Troubleshooting

### Common Issues

**Problem**: Images not loading
- **Solution**: Check internet connection and image URLs in `skills.json`

**Problem**: JSON parsing error
- **Solution**: Validate JSON format at [jsonlint.com](https://jsonlint.com)

**Problem**: BLoC state not updating
- **Solution**: Ensure events are being added correctly: `context.read<SkillBloc>().add(LoadSkills())`

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## 👤 Author

**Your Name**
- GitHub: [vkchowdary05](https://github.com/Vkchowdary05)
- Email: papasanikarthik@gmail.com

## 🙏 Acknowledgments

- [Flutter](https://flutter.dev) - UI framework
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) - State management


## 📊 Roadmap

- [ ] Add skill details page
- [ ] Implement favorites functionality
- [ ] Add search and filter options
- [ ] User progress tracking
- [ ] Video tutorials integration
- [ ] Dark mode support
- [ ] Multi-language support

## 💡 Tips for Best Performance

1. **Image Optimization**: Use optimized images (WebP format recommended)
2. **Lazy Loading**: Images are loaded on-demand
3. **State Management**: BLoC ensures efficient rebuilds
4. **Physics**: BouncingScrollPhysics provides native feel

## 📞 Support

For support, papasanikarthik@gmail.com or open an issue in the repository.

---


