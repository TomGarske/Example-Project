//
//  ViewController.swift
//  Example Project
//
//  Created by Thomas Garske on 11/11/16.
//  Copyright © 2016 csci4211. All rights reserved.
//

import UIKit
import Google

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        trackScreenView(screenName: "Home Screen")
    }

    @IBOutlet weak var helloLabel: UILabel!
    @IBAction func didTapSayHello(_ sender: Any) {
        helloLabel.text = "Hello World!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var secondViewController : SecondViewController?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segue_SecondView" {
            secondViewController = segue.destination as? SecondViewController
            secondViewController?.textToDisplay = helloLabel.text

            // OR without property, just local variable
            //let secViewController = segue.destination as? SecondViewController
            //secViewController?.textToDisplay = helloLabel.text
        }
    }
}
