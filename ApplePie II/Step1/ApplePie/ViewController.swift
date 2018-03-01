//
//  ViewController.swift
//  ApplePie
//
//  Created by Ana Nogal on 01/01/2018.
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
      let buttonTitle = sender.titleLabel?.text! ?? ""
      print("Button \(buttonTitle) was tapped")
    }

  
}
