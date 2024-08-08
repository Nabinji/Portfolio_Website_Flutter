class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? description;

  ProjectModel({
    required this.imgURL,
    required this.projectName,
    this.description,
  });
}
// this is the mode that i have already created.
List<ProjectModel> projects = [
  ProjectModel(
    description:
        "A Simple Chat App in Flutter can provide real-time messaging capabilities without using complex state management solutions like the Provider package. Features:User Authentication: Basic login and signup functionality.Real-time Messaging: Users can send and receive text messages.User Interface: Simple and user-friendly interface.Real-time Updates: Use Firebase Firestore for live message updates.",
    imgURL: 'asset/images/chat.png',
    projectName: 'Simple Chat App',
  ),
  ProjectModel(
    description:
        "An E-commerce App using the Provider package in Flutter allows users to browse, search, and purchase products. The Provider package manages the state of the application, ensuring smooth navigation and data updates across different parts of the app.",
    imgURL: 'asset/images/ecommerce.png',
    projectName: 'E-commerce App',
  ),
  ProjectModel(
    description:
        "A News App using an API provides users with the latest news articles and updates by fetching data from various news sources. The app can categorize news by topics such as sports, technology, politics, and entertainment, and often includes features like search, bookmarking, and push notifications for breaking news",
    imgURL: 'asset/images/news.png',
    projectName: 'News App',
  ),
  ProjectModel(
    description:
        "A Weather App using an API fetches and displays real-time weather data for various locations. Users can view current weather conditions, forecasts, and severe weather alerts. The app often includes features like hourly and weekly forecasts, weather maps, and the ability to save favorite locations for quick access.",
    imgURL: 'asset/images/weather.png',
    projectName: 'Weather App',
  ),
  ProjectModel(
    description:
        "A Quiz App in Flutter allows users to take a quiz with questions fetched from an external API. Each question is displayed with a countdown timer, and users must answer within the time limit. At the end of the quiz, the app calculates and displays the user's score.",
    imgURL: 'asset/images/quiz.png',
    projectName: 'Quiz App',
  ),
];
