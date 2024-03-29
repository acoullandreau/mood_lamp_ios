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

    var allModes: [Mode] = defaultModes + customModes
    var modesArray: [Mode] = []
    var tileWidth:CGFloat = 0.0
    
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
        
        // initialize the modesArray
        modesArray = allModes.filter { $0.isOriginMode == true }
        
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
            modesArray = allModes.filter { $0.isOriginMode == true }
            modesGrid.reloadData()
        } else {
            modesArray = allModes.filter { $0.isOriginMode == false }
            modesGrid.reloadData()
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
        
        // enables/disables the buttons
        if modeInstance.isEditable == false {
            cell.editButton.isHidden = true
        } else {
            cell.editButton.isHidden = false
        }
        if modeInstance.isOriginMode == true {
            cell.deleteButton.isHidden = true
        } else {
            cell.deleteButton.isHidden = false
        }
        
        //sets the name
        cell.modeName.text = modeInstance.propertyName
        
        // sets the color of the thumbnail
        if modeInstance.id == 1 {
            // call to get the updated size of the thumbnail frame
            cell.layoutIfNeeded()
            let cellHeight = cell.modeThumbnail.frame.size.height
            let gradientLayer = setThumbnailGradient(colors: modeInstance.thumbnailColors!, type: modeInstance.thumbnailGradientType!)
            gradientLayer.frame = CGRect(x: 0.0, y: 0.0, width: tileWidth, height: cellHeight)
            cell.modeThumbnail.layer.addSublayer(gradientLayer)
        } else {
            cell.modeThumbnail.backgroundColor = .red
        }
        
        return cell
    }
    
    func setThumbnailGradient(colors:[CGColor], type:String) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.colors = colors
        
        switch type {
        case "linear":
            gradient.type = .axial
            gradient.startPoint = CGPoint(x: 0, y: 1)
            gradient.endPoint = CGPoint(x: 1, y: 1)
            break
        case "radial":
            gradient.type = .radial
            break
        default:
            break
        }
        return gradient
    }
    
}

extension ModesViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.frame.size.width / 2
        tileWidth = collectionViewSize
        return CGSize(width: tileWidth , height: tileWidth )

    }
}



extension ModesViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let modeIndex = indexPath[0] + indexPath[1]
        let modeInstance = modesArray[modeIndex]
//        print(modeInstance)
    }
}
