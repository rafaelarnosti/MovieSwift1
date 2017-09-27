//
//  SettingsViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 27/09/17.
//  Copyright © 2017 EricBrito. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scColors: UISegmentedControl!
    @IBOutlet weak var swAutoPlay: UISwitch!
    @IBOutlet weak var tfGenre: UITextField!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(tfGenre.text!, forKey: "genre")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        scColors.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "color")
        swAutoPlay.setOn(UserDefaults.standard.bool(forKey: "autoplay"), animated: false)
        tfGenre.text = UserDefaults.standard.string(forKey: "genre")
    }

    @IBAction func changeColor(_ sender: UISegmentedControl) {
        UserDefaults.standard.set(sender.selectedSegmentIndex, forKey: "color")
    }
    
    @IBAction func changeAutoPlay(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "autoplay")
    }
    
    
}
