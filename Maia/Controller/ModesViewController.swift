//
//  AppViewController.swift
//  Maia
//
//  Created by Alexina Coullandreau on 26/03/2021.
//

import UIKit

class ModesViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var modesGrid: UICollectionView!
    

    var modesArray: [Mode] = [
        Mode(id: 0, orderIndex: 0, isOriginMode: true, isEditable: false, colors: [], speed: 0),
        Mode(id: 2, orderIndex: 2, isOriginMode: true, isEditable: false, colors: [UIColor(red: 0.89, green: 0.91, blue: 1.00, alpha: 1.00), UIColor(red: 1.00, green: 0.71, blue: 0.42, alpha: 1.00)], speed: 0)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // format the segmented control
        UISegmentedControl.appearance().backgroundColor = UIColor(red: 0.46, green: 0.46, blue: 0.50, alpha: 0.24)
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 0.85, green: 0.81, blue: 0.85, alpha: 1.00)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "TextLightColor")!], for: .normal)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "TextDarkColor")!], for: .selected)
        
        // set up the grid
        modesGrid.delegate = self
        modesGrid.dataSource = self
        modesGrid.register(UINib(nibName: "ModeCell", bundle: nil), forCellWithReuseIdentifier: "modeCell")
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
            print("Default modes")
        } else {
            print("Custom modes")
        }
        
    }

    
}


extension ModesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return modesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "modeCell", for: indexPath) as! ModeCell
        let modeIndex = indexPath[0] + indexPath[1]
        let modeInstance = modesArray[modeIndex]
        
        if modeInstance.colors != [] {
            cell.modeThumbnail.backgroundColor = modeInstance.colors[0]
        } else {
            cell.modeThumbnail.backgroundColor = .red
        }
            
        return cell
    }
    
    
}


extension ModesViewController: UICollectionViewDelegate {

}
