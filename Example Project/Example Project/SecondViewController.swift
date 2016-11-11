//
//  SecondViewController.swift
//  Example Project
//
//  Created by Thomas Garske on 11/11/16.
//  Copyright © 2016 csci4211. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var textToDisplay : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        display.text = textToDisplay
    }

    /*
    override func viewDidAppear(_ animated: Bool) {
        display.text = textToDisplay
        super.viewDidAppear(animated)
    }
    */

    override func viewWillAppear(_ animated: Bool) {
        trackScreenView(screenName: "Second Screen")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
