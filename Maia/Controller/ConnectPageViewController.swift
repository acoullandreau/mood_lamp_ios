//
//  ViewController.swift
//  Maia
//
//  Created by Alexina Coullandreau on 01/02/2021.
//

import UIKit

class ConnectPageViewController: UIViewController {

    @IBOutlet weak var connectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // format the connect button
        connectButton?.layer.cornerRadius = 8
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func onConnectClick(_ sender: Any) {
        print("Connecting to Maïa...")
        // add the code to open bluetooth, select device, connect...

        getModes()
        Timer.scheduledTimer(withTimeInterval:0.5, repeats:false) { (timer) in
            DispatchQueue.main.async{
               self.performSegue(withIdentifier: "connectedView", sender: self)
            }
            print("Connected.")
        }
        
    }
    
    @IBAction func onInfoButtonClick(_ sender: Any) {
        DispatchQueue.main.async{
           self.performSegue(withIdentifier: "infoPopUp", sender: self)
        }
    }
    
    
}

