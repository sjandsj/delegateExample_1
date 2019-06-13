//
//  secondViewController.swift
//  ProtocolAndDelegate_1
//
//  Created by mac on 13/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit
protocol DataPass {
    func dataIsBeingPassed(name: String, email: String, city: String)
}

class secondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    var delegate: DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func saveButton(_ sender: Any) {
        delegate.dataIsBeingPassed(name: nameTextField.text!, email: emailTextField.text!, city: cityTextField.text!)
    }
}
