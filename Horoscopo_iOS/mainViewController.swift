//
//  ViewController.swift
//  Horoscopo_iOS
//
//  Created by Tardes on 12/12/24.
//

import UIKit

class mainViewController: UIViewController, UITableViewDataSource {
 
    

    @IBOutlet weak var tableView: UITableView!
    
    
    let horoscopeList: [Horoscope] = Horoscope.getAll()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! HoroscopeViewCell
        let horoscope = horoscopeList[indexPath.row]
        cell.render(from: horoscope)
        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView = segue.destination as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow!
        let horoscope = horoscopeList[indexPath.row]
        
        detailView.horoscope = horoscope
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }


}

