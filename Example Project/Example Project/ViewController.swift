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

    @IBOutlet weak var version: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let dict = Bundle.main.infoDictionary!
        let versionString = (dict["CFBundleShortVersionString"] as! String) + "." + (dict["CFBundleVersion"] as? String)!
        version.text = versionString
    }

    override func viewWillAppear(_ animated: Bool) {
        trackScreenView(screenName: "Home Screen")
    }

    @IBOutlet weak var helloLabel: UILabel!
    @IBAction func didTapSayHello(_ sender: Any) {
        helloLabel.text = "Hello World!"
        //poorlyWrittenFunction(arbitraryNumber:4)
    }

    func poorlyWrittenFunction(arbitraryNumber:UInt32) {
        var temp : Double = 0
        for x in 0...arbitraryNumber*10000000 {
            let dub = Double(x)
            temp += dub*dub
        }
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
