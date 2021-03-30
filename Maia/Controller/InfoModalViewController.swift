//
//  InfoModalViewController.swift
//  Maia
//
//  Created by Alexina Coullandreau on 26/03/2021.
//

import UIKit

class InfoModalViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var versionLabel: UILabel!
    
    let appVersion = "1.0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add the info overlay content
        let attributedString = NSMutableAttributedString(string:"Cette application est conçue pour vous permettre de piloter une lampe d'ambiance nommée Maïa !\nPour obtenir de l\'aide, visitez la page d\'aide !\n\nLe projet est développé par Alexina Coullandreau et Gustavo Buzogany Eboli.\n\nJetez un oeil au code source de cette application, et n'hésitez pas à nous contacter !")
        attributedString.addAttribute(.link, value: "https://maia.acoullandreau.com/docs/", range: NSRange(location: 130, length: 12))
        attributedString.addAttribute(.link, value: "https://acoullandreau.com", range: NSRange(location: 173, length: 20))
        attributedString.addAttribute(.link, value: "https://gbuzogany.com", range: NSRange(location: 196, length: 24))
        attributedString.addAttribute(.link, value: "https://github.com/acoullandreau/mood_lamp_ios", range: NSRange(location: 239, length: 11))
        
        textView.attributedText = attributedString
        textView.textColor = UIColor.init(named: "TextLightColor")
        textView.font = UIFont.systemFont(ofSize: 12.0)
        
        // add the version label
        versionLabel.text = "Version \(appVersion)"
        versionLabel.font = UIFont.systemFont(ofSize: 11.0)
    }
    
    @IBAction func onCloseModal(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    
    
}


//Cette application est conçue pour vous permettre de piloter une lampe d'ambiance nommée Maïa !     Pour obtenir de l'aide, visitez la <a href="https://maia.acoullandreau.com/docs/" target="_blank" rel="noopener noreferrer">page d'instructions</a> ! Le projet est développé par
//<a href="https://acoullandreau.com" target="_blank" rel="noopener noreferrer"> Alexina Coullandreau </a>
//<span> et </span>
//<a href="https://gbuzogany.com" target="_blank" rel="noopener noreferrer"> Gustavo Buzogany Eboli</a>.     Jetez un oeil au <a href="https://github.com/acoullandreau/mood_lamp" target="_blank" rel="noopener noreferrer"> code source de cette page</a>,  et n'hésitez pas à nous contacter ! <br/> <br/> <br/> Version {this.props.settings.message}

