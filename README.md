# Test Project

A Flutter application demonstrating clean architecture with BLoC pattern, featuring authentication and post management functionalities.

## Features

- 🔐 User Authentication
- 📱 Responsive UI
- 📝 Posts Management
- 🎨 Custom Theme Support
- 🔄 State Management using BLoC
- 🛣️ Route Management using GoRouter

## Getting Started

### Prerequisites

- Flutter SDK (2.0 or higher)
- Dart SDK (2.12 or higher)
- An IDE (VS Code, Android Studio, or IntelliJ)

## Architecture

This project follows a clean architecture pattern with the following layers:

- **Config**: Contains app-wide configurations including themes, routing, and text styles
- **Core**: Houses constants and utility functions
- **Data**: Manages data handling including BLoC state management, models, and repositories
- **Presentation**: Contains all UI components including screens and widgets

## Dependencies

- `flutter_bloc`: State management
- `go_router`: Navigation and routing
- `dio`: HTTP client for API calls
- `meta`: Annotations for code generation

## Features in Detail

### Authentication

- Login screen with email and password validation
- Custom input fields with error handling
- Loading states and error feedback

### Posts Management

- Fetches posts from JSONPlaceholder API
- Displays posts in a scrollable list
- Pull-to-refresh functionality
- Error handling and loading states

### UI Components

- Custom button widget with loading states
- Custom input fields with various styling options
- Responsive layout adjustments
- Consistent theming across the app

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details

## Acknowledgments

- [Flutter](https://flutter.dev)
- [Bloc Library](https://bloclibrary.dev)
- [JSONPlaceholder](https://jsonplaceholder.typicode.com)
