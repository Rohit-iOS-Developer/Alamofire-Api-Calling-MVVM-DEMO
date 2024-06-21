//
//  ExampleViewModel.swift
//  Alamofire-Api-Calling-MVVM-DEMO
//
//  Created by ViPrak-Rohit on 18/06/24.
//

import Foundation
import Alamofire

class ExampleViewModel {
    var exampleData: [ExampleModel] = []
    
    var didUpdateData: (() -> Void)?
    var didFailWithError: ((Error) -> Void)?
    
    func fetchData() {
        let headers: HTTPHeaders = [
            .accept("application/json"),
            .authorization(bearerToken: "YOUR TOKEN")
        ]
        
        let parameters: [String: Any] = ["KEY": "VALUE"]
        
        NetworkManager.shared.getRequestWithQuery(url: "YOUR URL STRING", parameters: parameters, headers: headers) { (result: Result<[ExampleModel], Error>) in
            switch result {
            case .success(let data):
                self.exampleData = data
                self.didUpdateData?()
            case .failure(let error):
                self.didFailWithError?(error)
            }
        }
    }
    
    // Other functions to interact with the Network Manager (e.g., postData, updateData) can be added here
}

