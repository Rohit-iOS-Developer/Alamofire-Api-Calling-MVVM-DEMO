🚀 Alamofire MVVM API Demo
This project is a complete demo showcasing how to use Alamofire with the MVVM (Model-View-ViewModel) architecture in an iOS application. It includes examples for all common HTTP methods (GET, POST, PUT, DELETE) and demonstrates how to structure your code for clean separation of concerns and testability.

📱 Features
✅ MVVM Architecture

🌐 Network layer built using Alamofire

📦 Supports GET, POST, PUT, and DELETE requests

🔄 JSON response parsing with Swift Codable

🧪 Easy-to-test architecture

🧑‍💻 Tech Stack
Language: Swift

Architecture: MVVM

Networking: Alamofire

🛠️ Setup
Clone the repository:

git clone https://github.com/your-username/Alamofire-MVVM-Demo.git
cd Alamofire-MVVM-Demo
Install dependencies using Swift Package Manager or Cocoapods (if used):

SPM: Alamofire is included in the project using Swift Package Manager.

Open the .xcodeproj or .xcworkspace in Xcode and run the app on a simulator or device.

📬 API Example
Each API method (GET, POST, PUT, DELETE) is implemented in the APIService.swift using Alamofire.

swift
AF.request(url, method: .get).responseDecodable(of: User.self) { response in
    // handle response
}
You can switch between methods by calling different functions from the ViewModel.

🤝 Contributing
Pull requests and suggestions are welcome! Feel free to fork and open an issue if you'd like to improve or extend the demo.
