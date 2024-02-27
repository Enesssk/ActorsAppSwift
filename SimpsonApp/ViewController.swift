//
//  ViewController.swift
//  SimpsonApp
//
//  Created by Enes Kala on 27.02.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var actorList = [Simpson] ()
    var chosenSimpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Objects
        
        var rickGrimes = Simpson(nameInit: "Rick Grimes", yearsInit: "50", imageInit: UIImage(named: "rickGrimes")!)
        var michaelScofield = Simpson(nameInit: "Michael Scofield", yearsInit: "45", imageInit: UIImage(named: "michaelScofield")!)
        var macarena = Simpson(nameInit: "Macarena", yearsInit: "30", imageInit: UIImage(named: "macarena")!)
        
        actorList.append(rickGrimes)
        actorList.append(michaelScofield)
        actorList.append(macarena)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actorList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = actorList[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = actorList[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            var destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = chosenSimpson
            
        }
    }


}

