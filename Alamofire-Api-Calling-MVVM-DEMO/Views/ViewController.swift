//
//  ViewController.swift
//  Alamofire-Api-Calling-MVVM-DEMO
//
//  Created by ViPrak-Rohit on 18/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ExampleViewModel()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           // Bind ViewModel events
           viewModel.didUpdateData = { [weak self] in
               DispatchQueue.main.async {
                   self?.updateUI()
               }
           }
           
           viewModel.didFailWithError = { error in
               print("Error: \(error.localizedDescription)")
           }
           
           // Fetch data
           viewModel.fetchData()
       }
       
       func updateUI() {
           // Update the UI with the data from the ViewModel
           // For example, reload a table view
       }
   }
