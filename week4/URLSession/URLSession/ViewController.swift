//
//  ViewController.swift
//  URLSession
//
//  Created by 李童 on 2023/7/20.
//

import UIKit

struct StationJSON: Codable {
    let stationID: String
    let stationName: String
    let stationAddress: String
}

class ViewController: UIViewController {

    @IBOutlet weak var stationID: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var address: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getStationInfo()
    }
    
    func getStationInfo() {
      
      // Create a configuration
        let configuration = URLSessionConfiguration.ephemeral
      // Create a session
        let session = URLSession(configuration: configuration)
      // Setup the url
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
      // Create the task
        let task = URLSession.shared.dataTask(with: url) {
            
            (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                return
            }
            do {
                let decoder = JSONDecoder()
                let station = try decoder.decode(StationJSON.self, from: data)
                
                // Redirect to the main thread.
                DispatchQueue.main.async {
                    self.stationID.text = station.stationID
                    self.address.text = station.stationAddress
                    self.stationName.text = station.stationName
                }
                
            } catch {
                print("Error info: \(error)")
            }
        }
        task.resume()
    }
}

