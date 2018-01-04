//
//  StackViewController.swift
//  DynamicCollectionview
//
//  Created by GLB-312-PC on 14/12/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var axisSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func axisChange(_ sender: UISwitch) {
        UIView.animate(withDuration: 1) {
            self.updateConstarintsForAxis()
        }
        
    }
    
    func updateConstarintsForAxis(){
        if axisSwitch.isOn {
            stackView.axis = .horizontal
            titleLabel.text = "Horizontal"
        }
        else{
             titleLabel.text = "Vertical"
            stackView.axis = .vertical
        }
        
    }
    
}
