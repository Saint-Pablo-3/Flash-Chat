//
//  ViewController.swift
//  Flash Chat
//
//  Created by Pavel Reshetov on 02.02.2023.
//

import UIKit
//import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationController?.navigationBar.isHidden = true
        titleLabel.text = K.appName
        titleLabelAnimation()
    }
    
    func titleLabelAnimation() {
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "☄️Flash Chat"
        for letter in titleText { // titleText circle
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter) // increasing time of appearance
            }
            charIndex += 1
        }

    }


}

