//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Doğukan Temizyürek on 7.04.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var landarkName=[String]()
    var landMarkImages=[UIImage]()
    
    var chosenLandMarkName=""
    var chosenLandMarkImage=UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        
        landarkName.append("İzmir Saat Kulesi")
        landarkName.append("Gaziantep Kalesi")
        landarkName.append("Anıtkabir")
        landarkName.append("Nevşehir Peri Bacaları")
        landarkName.append("İstanbul Ayasofya")
        
        landMarkImages.append(UIImage(named: "İzmir.jpg")!)
        landMarkImages.append(UIImage(named: "Gaziantep.jpg")!)
        landMarkImages.append(UIImage(named: "Ankara.jpg")!)
        landMarkImages.append(UIImage(named: "Nevşehir.jpg")!)
        landMarkImages.append(UIImage(named: "İstanbul.jpg")!)
    

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landarkName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        let cell = UITableViewCell()
        var content=cell.defaultContentConfiguration()
        content.text=landarkName[indexPath.row]
        cell.contentConfiguration=content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandMarkName=landarkName[indexPath.row]
        chosenLandMarkImage=landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailVC"
        {
            let destinationVC=segue.destination as! DetailsVC
            destinationVC.selectedLandMarkName=chosenLandMarkName
            destinationVC.selectedLandMarkImage=chosenLandMarkImage
            
        }
        
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            self.landarkName.remove(at: indexPath.row)
            self.landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

 
