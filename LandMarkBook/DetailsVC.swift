//
//  DetailsVC.swift
//  LandMarkBook
//
//  Created by Doğukan Temizyürek on 9.04.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landMarkLabel: UILabel!
    
    @IBOutlet weak var landMarkImage: UIImageView!
    
    var selectedLandMarkName=""
    var selectedLandMarkImage=UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        landMarkLabel.text=selectedLandMarkName
        landMarkImage.image=selectedLandMarkImage
        
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
