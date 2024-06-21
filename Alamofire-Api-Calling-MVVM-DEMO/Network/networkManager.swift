//
//  networkManager.swift
//  Alamofire-Api-Calling-MVVM-DEMO
//
//  Created by ViPrak-Rohit on 18/06/24.
//

import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    // Generic request function
    func request<T: Codable>(url: String, method: HTTPMethod, parameters: [String: Any]?, encoding: ParameterEncoding, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let value):
                    completion(.success(value))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    // GET request with query parameters
    func getRequestWithQuery<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: headers, completion: completion)
    }
    
    // GET request with body parameters
    func getRequestWithBody<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .get, parameters: parameters, encoding: JSONEncoding.default, headers: headers, completion: completion)
    }
    
    // POST request with query parameters
    func postRequestWithQuery<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers, completion: completion)
    }
    
    // POST request with body parameters
    func postRequestWithBody<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers, completion: completion)
    }
    
    // DELETE request with query parameters
    func deleteRequestWithQuery<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .delete, parameters: parameters, encoding: URLEncoding.default, headers: headers, completion: completion)
    }
    
    // DELETE request with body parameters
    func deleteRequestWithBody<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .delete, parameters: parameters, encoding: JSONEncoding.default, headers: headers, completion: completion)
    }
    
    // PATCH request with query parameters
    func patchRequestWithQuery<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .patch, parameters: parameters, encoding: URLEncoding.default, headers: headers, completion: completion)
    }
    
    // PATCH request with body parameters
    func patchRequestWithBody<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .patch, parameters: parameters, encoding: JSONEncoding.default, headers: headers, completion: completion)
    }
    
    // PUT request with query parameters
    func putRequestWithQuery<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .put, parameters: parameters, encoding: URLEncoding.default, headers: headers, completion: completion)
    }
    
    // PUT request with body parameters
    func putRequestWithBody<T: Codable>(url: String, parameters: [String: Any]?, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        request(url: url, method: .put, parameters: parameters, encoding: JSONEncoding.default, headers: headers, completion: completion)
    }
}

