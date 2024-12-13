//
//  DetailViewController.swift
//  Horoscopo_iOS
//
//  Created by Tardes on 13/12/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    var horoscope: Horoscope!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = horoscope.name
        // Do any additional setup after loading the view.
        iconImageView.image = horoscope.icon
        dateLabel.text = horoscope.dates
        
        fetchData(name: horoscope.id)
        
    }
    
    func fetchData (name : String)
    {
        guard let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(name)&day=TODAY") else {
            detailLabel.text = "Error la api no responde"
            return
        }
        
      //  let urlRequest = URLRequest(url: url)
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url){(data, respone, error) in
            if let error =  error
            {
                self.detailLabel.text = "Error en la solicitud: \(error.localizedDescription)"
                return
            }
            
            guard let data = data else {
                self.detailLabel.text = "No se recibieron datos"
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let apiResponse = try decoder.decode(APIResponse.self, from: data)
                
                DispatchQueue.main.sync {
                    self.detailLabel.text = apiResponse.data.horoscope_data
                }
                
            }catch{
                
                print("error")
            }
            
            
        }
        dataTask.resume()
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
