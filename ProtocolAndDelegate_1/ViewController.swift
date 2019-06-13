//
//  ViewController.swift
//  ProtocolAndDelegate_1
//
//  Created by mac on 13/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataPass{
    func dataIsBeingPassed(name: String, email: String, city: String) {
        namLabel.text = name
        emailLabel.text = email
        cityLabel.text = city
    }
    
    
    @IBOutlet weak var namLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func jumpToFormButton(_ sender: Any) {
        let secondVC: secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

