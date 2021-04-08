//
//  AppViewController.swift
//  Maia
//
//  Created by Alexina Coullandreau on 26/03/2021.
//

import UIKit

class ModesViewController: UIViewController {

    @IBOutlet weak var customModesView: UIView!
    @IBOutlet weak var defaultModesView: UIView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // format the segmented control
        UISegmentedControl.appearance().backgroundColor = UIColor(red: 0.46, green: 0.46, blue: 0.50, alpha: 0.24)
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 0.85, green: 0.81, blue: 0.85, alpha: 1.00)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "TextLightColor")!], for: .normal)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "TextDarkColor")!], for: .selected)
        
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
    
    @IBAction func switchModesView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            defaultModesView.alpha = 1
            customModesView.alpha = 0
        } else {
            defaultModesView.alpha = 0
            customModesView.alpha = 1
        }
        
    }
    
    
    
}


