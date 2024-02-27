//
//  DetailsViewController.swift
//  SimpsonApp
//
//  Created by Enes Kala on 27.02.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
   
    var selectedSimpson : Simpson?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        imageView.image = selectedSimpson?.image
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.years
        
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
