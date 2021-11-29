//
//  ColorsViewController.swift
//  Maia
//
//  Created by Alexina Coullandreau on 26/03/2021.
//

import UIKit

class ColorsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    
    @IBAction func onInfoButtonClick(_ sender: Any) {
        
        DispatchQueue.main.async{
           self.performSegue(withIdentifier: "infoPopUp", sender: self)
        }
    }
    
    
}
