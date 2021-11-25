//
//  ViewController.swift
//  MusicTribe
//
//  Created by Sakshi Jain on 23/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var baseview: UIView!
    @IBOutlet var indicatorButtonOne: UIButton!
    @IBOutlet var indicatorButtonTwo: UIButton!
    @IBOutlet var indicatorButtonThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        indicatorButtonOne.addButtonStyle(border: .border)
        indicatorButtonTwo.addButtonStyle(border: .border)
        indicatorButtonThree.addButtonStyle(border: .border)
    }
}

