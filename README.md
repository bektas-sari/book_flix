# BookFlix (Flutter APP)

BookFlix is a modern, Netflix-inspired Flutter mobile application designed exclusively for book lovers. 
Browse, search, and discover books by topic, genre, or author, and access concise information about each title.

## Table of Contents

* [Features](#features)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Usage](#usage)
* [Project Structure](#project-structure)
* [Theming & Customization](#theming--customization)
* [Contributing](#contributing)
* [License](#license)
* [👤 Developer](#developer)

## Features

* **Search & Filter**: Find books by topic, genre, or author.
* **Modern UI**: Netflix-like carousel and grid layouts for an immersive browsing experience.
* **Responsive Design**: Optimized for both Android and iOS devices.
* **Dark Theme**: Seamless dark mode support for comfortable reading.

## Prerequisites

* Flutter SDK (>=2.10.0)
* Dart SDK (>=2.14.0)
* Git

## Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/bektas-sari/BookFlix.git
   cd BookFlix
   ```
2. **Install dependencies**

   ```bash
   flutter pub get
   ```
3. **Run the application**

   ```bash
   flutter run
   ```

## Usage

* Launch the app on your device/emulator.
* Use the search bar to enter a topic, genre, or author.
* Tap on any book to view its detailed information.

## Project Structure

```
lib/
├── main.dart           # App entry point and theme setup
├── models/
│   └── book.dart       # Book data model
├── pages/
│   ├── home_page.dart      # Browse & search interface
│   ├── book_list_page.dart # List of books
│   └── book_detail_page.dart # Detailed view of a selected book
├── data/
│   └── mock_data.dart  # Sample book data
└── widgets/            # Reusable UI components
```

## Theming & Customization

* Primary Color: `#E50914` (Netflix red accent)
* Dark background with `#121212` scaffold color
* Tab bar and typography styles defined in `main.dart`

## Contributing

Contributions are welcome! Please read our [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to get started.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 👨‍💻 Developer

**Bektaş Sarı**
PhD in Advertising, AI + Creativity researcher
Flutter Developer & Software Educator

- **Email:** [bektas.sari@gmail.com](mailto:bektas.sari@gmail.com)  
- **GitHub:** [github.com/bektas-sari](https://github.com/bektas-sari)  
- **LinkedIn:** [linkedin.com/in/bektas-sari](https://www.linkedin.com/in/bektas-sari)  
- **Researchgate:** [researchgate.net/profile/Bektas-Sari-3](https://www.researchgate.net/profile/Bektas-Sari-3)  
- **Academia:** [independent.academia.edu/bektassari](https://independent.academia.edu/bektassari)
